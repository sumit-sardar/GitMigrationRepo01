package com.tcs.util;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;





public class FileUploadUtil {
	
	public static String getSiteServey (String siteId,String surveyType) {
		
		return "SELECT count(*) isExist FROM site_survey WHERE site_survey_id ='"+siteId+"' and site_type='"+surveyType+"'";
	}
	
     public static String UpdateSiteSurveyDataSQL (String rowData[]) {
		
    	 String stmt = "";
    	 
    	 if (rowData[3] != null && rowData[3].length() > 0)
    		 stmt += "TEST_COORD_FIRST ='"+rowData[3]+"',";
    	 if (rowData[4] != null && rowData[4].length() > 0)
    		 stmt += "TEST_COORD_LAST ='"+rowData[4]+"',";
    	 if (rowData[5] != null && rowData[5].length() > 0)
    		 stmt += "TEST_COORD_EMAIL ='"+rowData[5]+"',";
    	 if (rowData[6] != null && rowData[6].length() > 0)
    		 stmt += "TEST_COORD_PHONE ='"+rowData[6]+"',";
    	 if (rowData[7] != null && rowData[7].length() > 0)
    		 stmt += "TECH_COORD_FIRST ='"+rowData[7]+"',";
    	 if (rowData[8] != null && rowData[8].length() > 0)
    		 stmt += "TECH_COORD_LAST ='"+rowData[8]+"',";
    	 if (rowData[9] != null && rowData[9].length() > 0)
    		 stmt += "TECH_COORD_EMAIL ='"+rowData[9]+"',";
    	 if (rowData[10] != null && rowData[10].length() > 0)
    		 stmt += "TECH_COORD_PHONE ='"+rowData[10]+"',";
    	 
    	 if (!stmt.equals("")){
    		 
    		 //remove the last comma
    		 stmt= stmt.substring(0,stmt.length()-1);
    		 
    		 stmt = "update site_survey set " + stmt + " WHERE SITE_ID='"+rowData[1]+"' AND SITE_TYPE='"+rowData[2]+"'";
    	 }
    			 
    return stmt;
    
	}
	
	
	public static InputStream getFileInputStream (String filePath) throws Exception{
		
		return new FileInputStream (filePath);
	}
	
	/*public static void init (rowData[]) throws Exception {
		
		Connection con = ConnectionManager.getConnection();
		PreparedStatement creStmtUpdateEmptyBlob = con.prepareStatement(FileUploadUtil.UpdateSiteSurveyDataSQL(rowData[]));
		
		creStmtUpdateEmptyBlob.executeUpdate();
		creStmtUpdateEmptyBlob.close();
		con.commit();
		ConnectionManager.close(con);
		
	}*/
	
	public static void updateBlob(Blob blob, InputStream inputStream) throws Exception {
		try {
			int i = 0;
			
			byte[] tempByte = new byte[Integer.valueOf("1024").intValue()];//new byte[Integer.MAX_VALUE];
	        long size = 1L;
	        if (inputStream != null) {
	        	
	        	while((i = inputStream.read(tempByte)) != -1) {
		        	blob.setBytes(size, tempByte);
		        	size = size + tempByte.length;
				}
	        	
	        }
	        
		} catch (Exception ex) {
			throw new Exception(ex);
		} catch(Error ex) {
			ex.printStackTrace();
		} finally {
			if (inputStream != null) {
				inputStream.close();
			}
		}
	}
	
	
	
	public static String isSiteSurveyIdExist (Integer siteSurveyID) {
		
		String sql = "SELECT count(*) as isExist FROM site_survey_enrollment WHERE site_survey_id ="+siteSurveyID;
		System.out.println(sql);
		
		return sql;
	}

	public static String getSiteServeyIdSQL(String customerId, String siteId,
			String sitePath) {

		String sql =  "select site_survey_id from site_survey where " +
				"customer_id = '"+customerId+"' " +
				"and site_id = '"+siteId+"' " +
				"and site_path='"+sitePath+"'";
		return sql;
	}

	/*public static String getsaveOrUpdateSiteSurveyEnrollMentMergeSQL(
			String[] rowData) {
		String sql =  " MERGE INTO site_survey_enrollment ssenrollment USING (select ? AS SITE_SURVEY_ID, ? AS THIRD_GRADE, ? AS  FOURTH_GRADE, ? AS FIFTH_GRADE, ? AS SIXTH_GRADE, ? AS SEVENTH_GRADE,  ? AS EIGHTH_GRADE, ? AS YEAR, ? AS TESTSESSION_PER_DAY, ? AS WORKSTATION_UP_TIME, ? AS TOTAL_TESTING_DAYS, ? AS SPARE_WORKSTATION_PERCENT, ? AS  MAKEUP_PERCENT  from dual) temp ON (ssenrollment.site_survey_id = temp.site_survey_id) WHEN MATCHED THEN   UPDATE  SET THIRD_GRADE  = temp.THIRD_GRADE,  FOURTH_GRADE  = temp.FOURTH_GRADE,  FIFTH_GRADE   = temp.FIFTH_GRADE,   SIXTH_GRADE   = temp.SIXTH_GRADE,  SEVENTH_GRADE  = temp.SEVENTH_GRADE, EIGHTH_GRADE  = temp.EIGHTH_GRADE,  YEAR   = temp.YEAR,  TESTSESSION_PER_DAY = temp.TESTSESSION_PER_DAY, WORKSTATION_UP_TIME       = temp.WORKSTATION_UP_TIME,  TOTAL_TESTING_DAYS  = temp.TOTAL_TESTING_DAYS, SPARE_WORKSTATION_PERCENT = temp.SPARE_WORKSTATION_PERCENT,  MAKEUP_PERCENT  = temp.MAKEUP_PERCENT , UPDATED_DATE_TIME = SYSDATE WHEN NOT MATCHED  THEN   INSERT     (SITE_SURVEY_ID,      THIRD_GRADE,      FOURTH_GRADE,      FIFTH_GRADE,      SIXTH_GRADE,      SEVENTH_GRADE,      EIGHTH_GRADE,   YEAR,   TESTSESSION_PER_DAY,   WORKSTATION_UP_TIME,   TOTAL_TESTING_DAYS,   SPARE_WORKSTATION_PERCENT,  MAKEUP_PERCENT) VALUES   ( temp. SITE_SURVEY_ID, temp.THIRD_GRADE,   temp.FOURTH_GRADE,   temp.FIFTH_GRADE,  temp.SIXTH_GRADE, temp.SEVENTH_GRADE,  temp.EIGHTH_GRADE,  temp.YEAR,  temp.TESTSESSION_PER_DAY, temp.WORKSTATION_UP_TIME, temp.TOTAL_TESTING_DAYS, temp.SPARE_WORKSTATION_PERCENT, temp.MAKEUP_PERCENT)";

		return sql;
	}*/
	
	public static String getsaveOrUpdateSiteSurveyEnrollMentMergeSQL(
			String[] rowData) {
		String sql = " MERGE INTO site_survey_enrollment ssenrollment USING (select ? AS SITE_SURVEY_ID, ? AS THIRD_GRADE, ? AS  FOURTH_GRADE, ? AS FIFTH_GRADE, ? AS SIXTH_GRADE, ? AS SEVENTH_GRADE,  ? AS EIGHTH_GRADE  from dual) temp ON (ssenrollment.site_survey_id = temp.site_survey_id ) WHEN MATCHED THEN   UPDATE  SET THIRD_GRADE  = temp.THIRD_GRADE,  FOURTH_GRADE  = temp.FOURTH_GRADE,  FIFTH_GRADE   = temp.FIFTH_GRADE,   SIXTH_GRADE   = temp.SIXTH_GRADE,  SEVENTH_GRADE  = temp.SEVENTH_GRADE, EIGHTH_GRADE  = temp.EIGHTH_GRADE, UPDATED_DATE_TIME = SYSDATE WHEN NOT MATCHED  THEN   INSERT     (SITE_SURVEY_ID,      THIRD_GRADE,      FOURTH_GRADE,      FIFTH_GRADE,      SIXTH_GRADE,      SEVENTH_GRADE,      EIGHTH_GRADE, TESTSESSION_PER_DAY, TOTAL_TESTING_DAYS) VALUES   ( temp. SITE_SURVEY_ID, temp.THIRD_GRADE,   temp.FOURTH_GRADE,   temp.FIFTH_GRADE,  temp.SIXTH_GRADE, temp.SEVENTH_GRADE,  temp.EIGHTH_GRADE,3,10)";

		return sql;
	}


	public static String getSiteSurveyIDBySchoolAndDistrictNo( ) {
		String sql =  "SELECT DISTINCT S_SITE.SITE_SURVEY_ID  FROM SITE_SURVEY S_SITE, SITE_SURVEY D_SITE WHERE D_SITE.SITE_ID = ? AND UPPER(D_SITE.SITE_TYPE) = UPPER ('CORPORATION') AND   S_SITE.SITE_ID = ?  AND  UPPER(S_SITE.SITE_TYPE) = UPPER ('SCHOOL')  AND TRIM(S_SITE.SITE_PATH) = (D_SITE.SITE_PATH||'/'||TRIM(S_SITE.SITE_NAME)) ";
		return sql;
	}

		
	
	
	
}