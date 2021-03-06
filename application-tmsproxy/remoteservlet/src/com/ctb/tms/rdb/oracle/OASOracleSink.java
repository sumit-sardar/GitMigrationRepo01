package com.ctb.tms.rdb.oracle;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;

import noNamespace.BaseType;

import org.apache.log4j.Logger;

import com.ctb.tms.bean.login.ItemResponseData;
import com.ctb.tms.bean.login.Manifest;
import com.ctb.tms.bean.login.ManifestData;
import com.ctb.tms.bean.login.ManifestWrapper;
import com.ctb.tms.bean.login.RosterData;
import com.ctb.tms.bean.login.StudentCredentials;
import com.ctb.tms.nosql.NoSQLStorageFactory;
import com.ctb.tms.nosql.OASNoSQLSink;
import com.ctb.tms.nosql.OASNoSQLSource;
import com.ctb.tms.rdb.OASRDBSink;

public class OASOracleSink implements OASRDBSink {	
	private static final String STORE_RESPONSE_SQL = "insert into item_response (  item_response_id,  test_roster_id,  \t\titem_set_id,  \t\titem_id,  \t\tresponse,  \t\tresponse_method,  \t\tresponse_elapsed_time,  \t\tresponse_seq_num,  \t\text_answer_choice_id,  \tstudent_marked,  \t\tcreated_by) \tvalues  (SEQ_ITEM_RESPONSE_ID.NEXTVAL,  ?,  ?,  ?,  ?,  'M',  ?,  ?,  ?,  ?,  6)";
	private static final String DELETE_CR_RESPONSE_SQL = "delete from item_response_cr where test_roster_id = ? and item_set_id = ? and item_id = ?";
	private static final String STORE_CR_RESPONSE_SQL = "insert into item_response_cr (  test_roster_id,  item_set_id, item_id, constructed_response) values (?,  ?,  ?,  ?)";
	private static final String SUBTEST_STATUS_SQL = "update student_item_set_status set tms_update = 'T', completion_status = NVL(?, completion_status), raw_score = NVL(?, raw_score), max_score = NVL(?, max_score), unscored = NVL(?, unscored), start_date_time = NVL(?, start_date_time), completion_date_time = NVL(?, completion_date_time), recommended_level = NVL(?, recommended_level) , ability_score = NVL(?, ability_score), sem_score = NVL(?, sem_score), objective_score = NVL(?, objective_score) where test_roster_id = ? and item_set_id = ?";
	private static final String SUBTEST_CLEANUP_SQL = "delete from student_item_set_status siss where siss.completion_status = 'SC' and siss.test_roster_id = ? and siss.item_set_id not in (itemSetIdList) and siss.item_set_id in (select isp.item_set_id from item_set_parent isp, test_admin_item_set tais, test_roster ros where ros.test_roster_id = siss.test_roster_id and tais.test_admin_id = ros.test_admin_id and isp.parent_item_set_id = tais.item_set_id and upper(tais.access_code) = upper(?))";
	private static final String TUTORIAL_STATUS_SQL = "insert into student_tutorial_status  (product_id, student_id, completion_status) values (3510, (select student_id from test_roster where test_roster_id = ?), 'CO')";
	private static final String TUTORIAL_DELETE_SQL = "delete from student_tutorial_status where student_id = (select student_id from test_roster where test_roster_id = ?)";
	private static final String ROSTER_STATUS_SQL = "update  test_roster ros set tms_update = 'T', test_completion_Status = decode((select count(*) from student_item_set_status where test_roster_id = ros.test_roster_id and completion_Status != 'CO'), 0, 'CO', NVL(?, test_completion_status)),  restart_number = ?,  start_date_time = nvl(start_date_time,?),  last_login_date_time = ?, updated_date_time = ?,  completion_date_time = ?, last_mseq = ?,  correlation_id = ?, random_distractor_seed = NVL(?, random_distractor_seed), tts_speed_status = ? where  test_roster_id = ?";
	private static final String CR_RESPONSE_EXISTS_SQL = "select COUNT(1) as responseCount from item_response_cr WHERE item_id = ? and test_roster_id = ?";
	//private static final String ROSTER_MSEQ_CHECK = "select last_mseq from test_roster where test_roster_id = ?";
	
	static Logger logger = Logger.getLogger(OASOracleSink.class);
	
	public Connection getOASConnection() throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		return OracleSetup.getOASConnection();
	}
	
	public void putItemResponse(Connection conn, ItemResponseData ird) throws NumberFormatException, SQLException, IOException, ClassNotFoundException {		
		String response = ird.getResponse();
		String CRresponse = null;
		String responseType = ird.getResponseType();
		int testRosterId = ird.getTestRosterId();
				
		String xmlResponse = response;
        if(xmlResponse != null && xmlResponse.length() > 0) {
            // strip xml
            int start = xmlResponse.indexOf(">");
            if(start >= 0) {
                response = xmlResponse.substring(start + 1);
                int end = response.lastIndexOf("</");
                if(end != -1)
                    response = response.substring(0, end);
            } else {
                response = xmlResponse;
            }
            // strip CDATA
            start = response.indexOf("[CDATA[");
            if(start >= 0) {
                response = response.substring(start + 7);
                int end = response.lastIndexOf("]]");
                if(end != -1)
                    response = response.substring(0, end);
            }
        }
		try {
			if(response != null && !"".equals(response.trim())) {
				if(responseType.equals(BaseType.IDENTIFIER.toString())) {
					logger.debug("Storing SR response");
					storeResponse(conn, testRosterId, ird.getItemSetId(), ird.getItemId(), response, ird.getResponseElapsedTime(), ird.getResponseSeqNum(), ird.getStudentMarked());
	            } else if(responseType.equals(BaseType.STRING.toString())) {
	            	logger.debug("Storing CR response");
	            	CRresponse = response;
	            	response = null;
	            	storeResponse(conn, testRosterId, ird.getItemSetId(), ird.getItemId(), response, ird.getResponseElapsedTime(), ird.getResponseSeqNum(), ird.getStudentMarked());
	                storeCRResponse(conn, testRosterId, ird.getItemSetId(), ird.getItemId(), CRresponse, ird.getResponseElapsedTime(), ird.getResponseSeqNum(), ird.getStudentMarked(), ird.isAudioItem());
	            }
				//logger.info("Finished putItemResponse for roster " + testRosterId + ", mseq " + ird.getResponseSeqNum());
		    } else{
		    	logger.debug("Storing null response");
		    	response = "";
		    	storeResponse(conn, testRosterId, ird.getItemSetId(), ird.getItemId(), response, ird.getResponseElapsedTime(), ird.getResponseSeqNum(), ird.getStudentMarked());                                          
	        }
		} catch (SQLException sqe) {
			logger.warn("Couldn't store response, marking roster unusable: " + testRosterId);
			OASNoSQLSource oasSource = NoSQLStorageFactory.getOASSource();
			OASNoSQLSink oasSink = NoSQLStorageFactory.getOASSink();
			ManifestWrapper wrapper = oasSource.getAllManifests(String.valueOf(testRosterId));
			Manifest[] manifests = wrapper.getManifests();
			for(int i=0;i<manifests.length;i++) {
				manifests[i].setUsable(false);
			}
			wrapper.setManifests(manifests);
			oasSink.putAllManifests(String.valueOf(testRosterId), wrapper, false);
			throw sqe;
		}
		logger.debug("\n***** OASOracleSink: putItemResponse: " + ird.getTestRosterId() + ", mseq: " + ird.getResponseSeqNum() + ", item: " + ird.getItemId() + ", item type: " + ird.getItemType() + ", response type: " + responseType + ", elapsed time: " + ird.getResponseElapsedTime() + ", response: " + response + ", CR response: " + CRresponse);
	}

	private void storeResponse(Connection con, int testRosterId, int itemSetId, String itemId, String response, float duration, String mseq, String studentMarked) throws SQLException {
		logger.debug("Called storeResponse for roster: " + testRosterId + ", item: " + itemId);
		PreparedStatement stmt1 = null;
    	try {
			stmt1 = con.prepareStatement(STORE_RESPONSE_SQL);
			stmt1.setInt(1, testRosterId);
			stmt1.setInt(2, itemSetId);
			stmt1.setString(3, itemId);
			stmt1.setString(4, response);
			stmt1.setFloat(5, duration);
			stmt1.setString(6, mseq);
			stmt1.setString(7, null);
			stmt1.setString(8, studentMarked);

			stmt1.executeUpdate();
			logger.debug("OASOracleSink: Stored response record in DB for roster " + testRosterId + ", mseq " + mseq + ", response: " + response);
		} catch (SQLException e) {
			if(e.getMessage().indexOf("unique constraint") >= 0 ) {
				logger.debug("dupe response for roster: " + testRosterId + ", item: " + itemId);
			} else {
				logger.info("other error for roster: " + testRosterId + ", item: " + itemId + ": " + e.getMessage());
				throw(e);
			}
		} finally {
			try {
				if(stmt1 != null) stmt1.close();
			} catch (Exception e) {
				// do nothing
			}
		}
	}
	
	public void putManifest(Connection conn, String testRosterId, Manifest[] manifests) throws SQLException {
		PreparedStatement stmt1 = null;
		PreparedStatement stmt2 = null;
		PreparedStatement stmt3 = null;
		PreparedStatement stmt4 = null;
		PreparedStatement stmt5 = null;
		DecimalFormat df = new DecimalFormat("#.##");
    	try {
    		boolean isTABE = false;
    		for(int k=0;k<manifests.length;k++) {
				Manifest manifest = manifests[k];
	    		String subtestList = "";
	    		ManifestData [] subtests = manifest.getManifest();
	    		for(int i=0;i<subtests.length;i++) {
	    			ManifestData subtest = subtests[i];
	    			if(i==0) {
	    				subtestList = subtestList + subtest.getId();
	    			} else {
	    				subtestList = subtestList + "," + subtest.getId();
	    			}
	    			if("TB".equals(subtest.getProduct()) || "TL".equals(subtest.getProduct())) {
	    				isTABE = true;
	    			}
	    			if(!"SC".equals(subtest.getCompletionStatus())) {
		    			stmt1 = conn.prepareStatement(SUBTEST_STATUS_SQL);
		    			stmt1.setString(1, subtest.getCompletionStatus());
		    			if(subtest.getMaxScore() > 0) {
			    			stmt1.setInt(2, subtest.getRawScore());
			    			stmt1.setInt(3, subtest.getMaxScore());
			    			stmt1.setInt(4, subtest.getUnscored());
		    			} else {
		    				stmt1.setObject(2, null);
			    			stmt1.setObject(3, null);
			    			stmt1.setObject(4, null);
		    			}
		    			if(subtest.getStartTime() > 0) {
		    				stmt1.setTimestamp(5, new Timestamp(subtest.getStartTime()));
		    			} else {
		    				stmt1.setTimestamp(5, null);
		    			}
		    			if(subtest.getEndTime() > 0) {
		    				stmt1.setTimestamp(6, new Timestamp(subtest.getEndTime()));
		    			} else {
		    				stmt1.setTimestamp(6, null);
		    			}
		    			stmt1.setString(7, subtest.getRecommendedLevel());       			
		    			stmt1.setString(8, df.format(subtest.getAbilityScore()));
		    			stmt1.setString(9, df.format(subtest.getSemScore()));
		    			stmt1.setString(10, subtest.getObjectiveScore());
		    			stmt1.setString(11, testRosterId);
		    			stmt1.setInt(12, subtest.getId());
		    			stmt1.executeUpdate();
		    			logger.debug("OASOracleSink: Updated subtest status for roster: " + testRosterId + ", subtest: " + subtest.getId() + ". Status is: " + subtest.getCompletionStatus());
		    			stmt1.close();
		    			stmt1 = null;
	    			}
	    		}
	    		if(isTABE) {
					if("".equals(subtestList.trim())) subtestList = "-1";
					stmt3 = conn.prepareStatement(SUBTEST_CLEANUP_SQL.replaceAll("itemSetIdList", subtestList));
		    		stmt3.setString(1, testRosterId);
		    		stmt3.setString(2, manifest.getAccessCode());
		    		stmt3.executeUpdate();
		    		stmt3.close();
		    		stmt3 = null;
				}
	    		if(k==0) {
		    		stmt2 = conn.prepareStatement(ROSTER_STATUS_SQL);
		    		stmt2.setString(1, manifest.getRosterCompletionStatus());
		    		stmt2.setInt(2, manifest.getRosterRestartNumber());
		    		if(manifest.getRosterStartTime() == 0) {
		    			stmt2.setTimestamp(3, null);
			    		stmt2.setTimestamp(4, null);
		    		} else {
			    		stmt2.setTimestamp(3, new Timestamp(manifest.getRosterStartTime()));
			    		stmt2.setTimestamp(4, new Timestamp(manifest.getRosterStartTime()));
		    		}
		    		stmt2.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
		    		if(manifest.getRosterEndTime() == 0) {
		    			stmt2.setTimestamp(6, null);
		    		} else {
			    		stmt2.setTimestamp(6, new Timestamp(manifest.getRosterEndTime()));
		    		}
		    		stmt2.setInt(7, manifest.getRosterLastMseq());
		    		stmt2.setInt(8, manifest.getRosterCorrelationId());
		    		Integer seed = null;
		    		if(subtests[0] != null && "Y".equals(subtests[0].getRandomDistractorStatus())) {
		    			seed = new Integer(manifest.getRandomDistractorSeed());
		    		}
//		    		if(seed != null && !"".equals(seed)) { // seed is an Integer
		    		if(seed != null) { 
		    			stmt2.setInt(9, seed);
		    		} else {
		    			stmt2.setObject(9, null);
		    		}
		    		stmt2.setString(10,manifest.getTtsSpeedStatus());
		    		stmt2.setString(11, testRosterId);
		    		stmt2.executeUpdate();
		    		stmt2.close();
		    		stmt2 = null;
					logger.debug("OASOracleSink: Updated roster status for roster: " + testRosterId + ". Status is: " + manifest.getRosterCompletionStatus());
					if(manifest.getTutorialTaken() != null) {
						stmt4 = conn.prepareStatement(TUTORIAL_DELETE_SQL);
			    		stmt4.setString(1, testRosterId);
			    		stmt4.executeUpdate();
			    		stmt4.close();
			    		stmt4 = null;
						stmt4 = conn.prepareStatement(TUTORIAL_STATUS_SQL);
			    		stmt4.setString(1, testRosterId);
			    		stmt4.executeUpdate();
			    		stmt4.close();
			    		stmt4 = null;
			    		logger.info("OASOracleSink: Updated tutorial status for roster: " + testRosterId + ". Status is: " + manifest.getTutorialTaken());
					}
	    		}
    		}
    	} finally {
			try {
				if(stmt1 != null) stmt1.close();
				if(stmt2 != null) stmt2.close();
				if(stmt3 != null) stmt3.close();
				if(stmt4 != null) stmt4.close();
				if(stmt5 != null) stmt5.close();
			} catch (SQLException e) {
				// do nothing
			}
		}
	}
	
	private void storeCRResponse(Connection conn, int testRosterId, int itemSetId, String itemId, String response, float duration, String mseq, String studentMarked, boolean audioItem) throws SQLException {
		PreparedStatement stmt1 = null;
		PreparedStatement stmt2 = null;
		PreparedStatement stmt3 = null;
    	try {
			stmt1 = conn.prepareStatement(DELETE_CR_RESPONSE_SQL);
			stmt1.setInt(1, testRosterId);
			stmt1.setInt(2, itemSetId);
			stmt1.setString(3, itemId);		
			
			stmt2 = conn.prepareStatement(STORE_CR_RESPONSE_SQL);
			stmt2.setInt(1, testRosterId);
			stmt2.setInt(2, itemSetId);
			stmt2.setString(3, itemId);
			stmt2.setString(4, response);
			
			
			if(audioItem){
				if(response.length()== 0){
					stmt3 = conn.prepareStatement(CR_RESPONSE_EXISTS_SQL);
					stmt3.setString(1, itemId);
					stmt3.setInt(2, testRosterId);
					ResultSet rs1 = stmt3.executeQuery();
        			if(rs1.next() && rs1.getInt("responseCount") == 0){
        				stmt1.executeUpdate();
        				stmt2.executeUpdate();        				
        			}
				}else{
					stmt1.executeUpdate();
    				stmt2.executeUpdate();
				}
			}else{
				stmt1.executeUpdate();
				stmt2.executeUpdate();
			}

			
			logger.debug("OASOracleSink: Stored CR response record in DB for roster " + testRosterId + ", mseq " + mseq);
		} catch (SQLException e) {
			if(e.getMessage().indexOf("unique constraint") >= 0 ) {
				// do nothing, dupe response
			} else {
				throw(e);
			}
		} finally {
			try {
				if(stmt1 != null) stmt1.close();
				if(stmt2 != null) stmt2.close();
				if(stmt3 != null) stmt3.close();
			} catch (Exception e) {
				// do nothing
			}
		}
	}

	public void putActiveRosters(Connection con, StudentCredentials[] credsA) {
		// do nothing
		
	}

	public void putRosterData(Connection conn, StudentCredentials creds, RosterData rosterData) throws Exception {
		/*PreparedStatement stmt2 = null;
		try {
	    		stmt2 = conn.prepareStatement(ROSTER_STATUS_SQL);
	    		stmt2.setString(1, rosterData.getAuthData().getRosterTestCompletionStatus());
	    		stmt2.setInt(2, rosterData.getAuthData().getRestartNumber());
	    		stmt2.setTimestamp(3, rosterData.getAuthData().getStartTime());
	    		stmt2.setTimestamp(4, rosterData.getAuthData().getStartTime());
	    		stmt2.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
	    		stmt2.setTimestamp(6, rosterData.getAuthData().getEndTime());
	    		stmt2.setInt(7, rosterData.getAuthData().getLastMseq());
	    		stmt2.setInt(8, rosterData.getAuthData().getCorrelationId());
	    		Integer seed = null;
	    		if(rosterData.getAuthData().getRandomDistractorSeedNumber() != null) {
	    			seed = rosterData.getAuthData().getRandomDistractorSeedNumber().intValue();
	    		}
	    		if(seed != null) {
	    			stmt2.setInt(9, seed);
	    		} else {
	    			stmt2.setObject(9, null);
	    		}
	    		stmt2.setString(10, creds.getTestRosterId());
	    		stmt2.executeUpdate();
	    		stmt2.close();
	    		stmt2 = null;
				logger.debug("OASOracleSink: Updated roster status for roster: " + creds.getTestRosterId() + ". Status is: " + rosterData.getAuthData().getRosterTestCompletionStatus());
    	} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			try {
				if(stmt2 != null) stmt2.close();
			} catch (Exception e) {
				// do nothing
			}
		}*/
	}

	public void shutdown() {
		// do nothing
	}
}
