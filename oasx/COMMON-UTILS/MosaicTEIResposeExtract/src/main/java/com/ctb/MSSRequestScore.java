package com.ctb;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.log4j.Logger;

import com.ctb.utils.DBUtils;
import com.ctb.utils.ExtractUtils;
import com.ctb.utils.MSSConstantUtils;
import com.ctb.utils.MSSRequestProcessor;
import com.ctb.utils.MosaicRequestExcelPojo;
import com.ctb.utils.SQLUtils;
import com.ctb.utils.SimpleCache;
import com.ctb.utils.StudentResponseExcelUtils;
import com.ctb.utils.StudentResponses;


/**
 * 
 * @author TCS
 *
 */
public class MSSRequestScore {
	static Logger logger = Logger
			.getLogger(MSSRequestScore.class.getName());

	public void run(){
		
		Connection conn = DBUtils.getOASConnection();
		SimpleCache cache = null;
		try {
			cache = new SimpleCache();
			int threadCount = Integer.parseInt(ExtractUtils.get("thread.connection.number"));
			ExecutorService executor = Executors.newFixedThreadPool(threadCount);
			String productId = ExtractUtils.get("oas.framework.productId");
			String location = ExtractUtils.get("oas.export.file.location");
			
			//: Data population from database
			getResultSetData(productId, conn, cache);
			
			if(cache.size() > 0){
				collectAllResponses(cache, conn);
					logger.info("*** run : Initiating Request Response processor ...");
					for (String id: cache.getKeys()) {
						StudentResponses resp = cache.getResponse(id);
						if(resp.getClobResponse()!=null && !resp.getClobResponse().isEmpty()){
							MSSRequestProcessor process = new MSSRequestProcessor(resp, cache);
							executor.execute(new Thread(process));
						}else{
							populateExtractResponse(cache, resp);
						}
					}
					executor.shutdown();
					while (!executor.isTerminated()) {
						//: Break after all the task is completed.
					}
					
					//: Collect all processed response to be written
					logger.info("*** run : Total coverted responses size "+cache.extractSize()+" out of "+cache.size()+".");

					//: create .xls file from final collection
					processExcelFileGeneration(cache, location);
			}
			
		} catch (Exception e) {
			logger.error("*** Process Failed : "+e.getMessage());
			e.printStackTrace();
		}
		finally{
			DBUtils.close(conn);
			if(cache!=null){
				cache.closeCache();
			}
		}
		
	}
	
	
	/**
	 * Populate final extract response collection
	 * @param cache
	 * @param resp
	 */
	private void populateExtractResponse(SimpleCache cache, StudentResponses resp) {
		String extractKey = resp.getRosterid()
				.concat(resp.getOasItemId())
				.concat(resp.getDasItemid());
		cache.addExtractResponse(extractKey,
			new MosaicRequestExcelPojo(resp.getDasItemid(),	MSSConstantUtils.BLANK_FIELD, MSSConstantUtils.BLANK_FIELD, 
					resp.getRosterid(), resp.getOasItemId(), resp.getPEId(), MSSConstantUtils.NOT_ANSWERED));
		
	}


	/**
	 * Populate all constructed response for students
	 * @param cache
	 * @param conn
	 * @return
	 */
	private void collectAllResponses(
			SimpleCache cache, Connection conn) throws Exception {

		StringBuilder rosterItems = new StringBuilder();
		int counter = 0;
		for (String id : cache.getKeys()) {
			StudentResponses resp = cache.getResponse(id);
			rosterItems.append("(").append(resp.getRosterid()).append(",")
					.append(resp.getItemSerIdTD()).append(",'")
					.append(resp.getOasItemId()).append("')");
			if (++counter % 998 == 0) {
				rosterItems.append("#");
			} else {
				rosterItems.append(",");
			}
		}
		getResponsesFromDB(rosterItems.toString(), cache, conn);
	}


	/**
	 * Get all students and item details those have TE item response
	 * @param mosaicRequestCSVList
	 * @param location
	 * @throws Exception
	 */
	private void processExcelFileGeneration(SimpleCache cache, String location)
//			List<MosaicRequestExcelPojo> mosaicRequestCSVList, String location)
			throws Exception {

		StringBuilder fileName = new StringBuilder(ExtractUtils.get("oas.export.file.name"));
		FileOutputStream fileOut = null;
		// FileWriter writer = null;
		try {
			
			String newdate = new SimpleDateFormat("_yyyyMMdd'_'HHmm").format(new Date());
			fileName.append(newdate).append(".xls");
			// : File writer to create a file
			if (!(new File(location)).exists()) {
				File f = new File(location);
				f.mkdirs();
			}
			File ff = new File(location, fileName.toString());
			if ((ff).exists()) {
				ff.delete();
			}
			
			fileOut = new FileOutputStream(ff);
			
			StudentResponseExcelUtils excelUtils = new StudentResponseExcelUtils();
			excelUtils.generateExcelReport(new Object[]{fileName.toString(), cache, fileOut});
			
			
			logger.info("*** processExcelFileGeneration : Excel file has been successfully created at location "+ff.getAbsolutePath());
		} catch (IOException e) {
			throw new Exception(e.getMessage());
		} finally {
			if (fileOut != null) {
				try {
					fileOut.flush();
					fileOut.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * Get student details along with the attempted item
	 * @param productId
	 * @param conn
	 * @param cache
	 * @throws Exception
	 */
	private void getResultSetData(String productId,
			Connection conn, SimpleCache cache) throws Exception{

		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = SQLUtils.GET_ALL_MAPPING_ITEM_DETAILS;
		try {

			ps = conn.prepareStatement(query);
			ps.setInt(1, Integer.parseInt(productId));
			ps.setFetchSize(500);
			rs = ps.executeQuery();
			while (rs.next()) {
				StudentResponses stResps = new StudentResponses();
				
				stResps.setDasItemid((rs.getString("das_item_id")==null)?"":rs.getString("das_item_id"));
				stResps.setOasItemId(rs.getString("oas_item_id"));
				stResps.setPEId((rs.getString("peid")==null)?"":rs.getString("peid"));
				stResps.setRosterid(rs.getString("test_roster_id"));
				stResps.setItemOrder((rs.getString("item_order")==null)?"":rs.getString("item_order"));
				stResps.setItemSerIdTD(rs.getString("item_set_id"));
				
				String id = stResps.getRosterid().concat(stResps.getOasItemId()).concat(stResps.getDasItemid());
				cache.addResponse(id, stResps);
			}
			logger.info("*** getResultSetData : Found total "+ cache.size() +" rows to be processed.");
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			DBUtils.close(ps, rs);
		}
	}
	
	/**
	 * fetch all response from database
	 * @param rosterItems
	 * @param cache 
	 * @param conn
	 * @throws Exception
	 */
	private void getResponsesFromDB(String rosterItems,
			final SimpleCache cache, final Connection conn) throws Exception {

		String[] strArr = rosterItems.split("#");
		try {
			logger.info("*** getResponsesFromDB : Fetching constructed responses for all. \n\tIt will take some time. Please wait !!!");
			ExecutorService executor = Executors.newFixedThreadPool(2);
			for (int indx = 0; indx < strArr.length; indx++) {
				final String inclause = (strArr[indx].endsWith(",")) ? strArr[indx]
						.substring(0, strArr[indx].lastIndexOf(","))
						: strArr[indx];
				
				Thread t1 = new Thread(new Runnable() {
					public void run() {
						long startTime = System.currentTimeMillis();
						PreparedStatement ps = null;
						ResultSet rs = null;
						try{
							logger.info("*** getResponsesFromDB : Thread "+Thread.currentThread().getId()+": Started fetching response data ...");
							
							final String query = SQLUtils.GET_CR_RESPONSE_BY_ROSTER_ITEM.concat(inclause).concat(")");
							ps = conn.prepareStatement(query);
							int maxlimit = Integer.parseInt(ExtractUtils.get("irc.batch.size.maxlimit"));
							ps.setFetchSize(maxlimit);
							rs = ps.executeQuery();
							while (rs.next()) {
								String id = rs.getString("key");
								StudentResponses resp = cache.getResponse(id);
								if(resp != null){
									resp.setClobResponse(MSSConstantUtils.clobToString(rs.getClob("constructed_response")));
									cache.addResponse(id, resp);
								}
							}
							
							long endTime = System.currentTimeMillis();
							logger.info("*** getResponsesFromDB : Thread "+Thread.currentThread().getId()+": fetched query time taken : "+ MSSConstantUtils.timeTaken(endTime - startTime) + " ...");
						}catch (Exception e) {
							e.printStackTrace();
						} finally {
							DBUtils.close(ps, rs);
						}
					}
				});
				executor.execute(t1);
			}
			executor.shutdown();
			while (!executor.isTerminated()) {
				//: Break after all the task is completed.
			}
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally{
			DBUtils.close(conn);
		}
	}

}
