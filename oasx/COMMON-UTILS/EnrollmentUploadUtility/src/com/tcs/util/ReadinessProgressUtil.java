package com.tcs.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ReadinessProgressUtil {


	public static void updateReadinessStatus (Integer siteSurveyId, Connection con,boolean isSubject) throws Exception{
		
		PreparedStatement preStatement = con.prepareStatement(ReadinessProgressSQL.getSiteSurveyData(siteSurveyId), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		ResultSet siteSurveyRS = preStatement.executeQuery();
		
		PreparedStatement preStatement1 = con.prepareStatement(isSubject ? ReadinessProgressSQL.getSiteEnrollmentDataBySubject(siteSurveyId):ReadinessProgressSQL.getSiteEnrollmentData(siteSurveyId), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		ResultSet enrollmentRS = preStatement1.executeQuery();
		
		String check12 = checkPoint1Part2(siteSurveyRS, enrollmentRS,isSubject);
		
		PreparedStatement preStatement2 = con.prepareStatement(ReadinessProgressSQL.updateCheckPoint1Part2SQL(siteSurveyId));
		preStatement2.setString(1, check12);
		preStatement2.executeUpdate();
		
		PreparedStatement preStatement3 = con.prepareStatement(ReadinessProgressSQL.updateSchoolProgressSQL(siteSurveyId));
		preStatement3.setInt(1, schoolProgressStatus(siteSurveyRS, check12));
		preStatement3.executeUpdate();
		
}

	private static int schoolProgressStatus (ResultSet siteSurveyRS, String checkPoint1Part2) throws Exception {
		
		siteSurveyRS.beforeFirst();
		int schoolProgress = 0;
		if (siteSurveyRS.next()) {
			String check1Part1 = siteSurveyRS.getString("CHECK_POINT1_PART1");
			String check1Part3 = siteSurveyRS.getString("CHECK_POINT1_PART3");
			String check2 = siteSurveyRS.getString("CHECK_POINT2");
			String check3 = siteSurveyRS.getString("CHECK_POINT3");
			
			
			if(check1Part1 != null && !"".equals(check1Part1) && check1Part1.equalsIgnoreCase("T")) {
				if(checkPoint1Part2.equals("T")) {
					if(check1Part3 != null && !"".equals(check1Part3) && check1Part3.equalsIgnoreCase("T")) {
						if(check2 != null && !"".equals(check2) && check2.equalsIgnoreCase("T")) {
							if(check3 != null && !"".equals(check3) && check3.equalsIgnoreCase("T")) {
								schoolProgress = 5;
							}
							else {
								schoolProgress = 4;
							}
						}
						else {
							schoolProgress = 3;
						}
					}
					else {
						schoolProgress = 2;
					}
				}
				else {
					schoolProgress = 1;
				}
			}
		}
		
		return schoolProgress;
		
	}

	private static String checkPoint1Part2 (ResultSet siteSurveyRS, ResultSet enrollmentRS,boolean isSubject) throws Exception {
		
		int usableWorkstationCount = 0;
		int workstationCapacityAvailable = 0;
		int testSessionsPerDay = 0;
		int totalTestingDays = 0;
		int workstationCapacityRequired= 0;	
		if(siteSurveyRS.next() && enrollmentRS.next()) {
			
			usableWorkstationCount = siteSurveyRS.getInt("WORKSTATION_COUNT");
			testSessionsPerDay = enrollmentRS.getInt("TESTSESSION_PER_DAY");
			totalTestingDays = enrollmentRS.getInt("TOTAL_TESTING_DAYS");
		}
		if(!isSubject)
			workstationCapacityRequired = getWorkstationRequired(enrollmentRS);
		else
			workstationCapacityRequired = getWorkstationRequiredBySubject(enrollmentRS);
		
		workstationCapacityAvailable = usableWorkstationCount * testSessionsPerDay * totalTestingDays;
		
		if(workstationCapacityRequired <= workstationCapacityAvailable)
			return "T";
	    else
	    	return "F";
		
		
	}


	private static int getWorkstationRequired(ResultSet enrollmentRS) throws Exception{
	
		enrollmentRS.beforeFirst();
		int totalStudentCount = 0;
		if(enrollmentRS.next()) {
			String thirdGradeCheck = enrollmentRS.getString("THIRD_GRADE_CHK");
			String fourthGradeCheck = enrollmentRS.getString("FOURTH_GRADE_CHK");
			String fifthGradeCheck = enrollmentRS.getString("FIFTH_GRADE_CHK");
			String sixthGradeCheck = enrollmentRS.getString("SIXTH_GRADE_CHK");
			String seventhGradeCheck = enrollmentRS.getString("SEVENTH_GRADE_CHK");
			String eighthGradeCheck = enrollmentRS.getString("EIGHTH_GRADE_CHK");
			String thirdGradeData = enrollmentRS.getString("THIRD_GRADE");
			String fourthGradeData = enrollmentRS.getString("FOURTH_GRADE");
			String fifthGradeData = enrollmentRS.getString("FIFTH_GRADE");
			String sixthGradeData = enrollmentRS.getString("SIXTH_GRADE");
			String seventhGradeData = enrollmentRS.getString("SEVENTH_GRADE");
			String eighthGradeData = enrollmentRS.getString("EIGHTH_GRADE");
		
				if (thirdGradeCheck != null && thirdGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(thirdGradeData != null && !("").equals(thirdGradeData) ? thirdGradeData : "0")
							* getContentArea(3);
				if (fourthGradeCheck != null && fourthGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(fourthGradeData != null && !("").equals(fourthGradeData) ? fourthGradeData : "0") 
							* getContentArea(4);
				if (fifthGradeCheck != null && fifthGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(fifthGradeData != null && !("").equals(fifthGradeData) ? fifthGradeData : "0")
							* getContentArea(5);
				if (sixthGradeCheck != null && sixthGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(sixthGradeData != null && !("").equals(sixthGradeData) ? sixthGradeData : "0")
							* getContentArea(6);
				if (seventhGradeCheck != null && seventhGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(seventhGradeData != null && !("").equals(seventhGradeData) ? seventhGradeData : "0")
							* getContentArea(7);
				if (eighthGradeCheck != null && eighthGradeCheck.equals("1"))
					totalStudentCount += Integer.parseInt(eighthGradeData != null && !("").equals(eighthGradeData) ? eighthGradeData : "0") 
							* getContentArea(8);
		}
		return totalStudentCount;
	}
	private static int getWorkstationRequiredBySubject(ResultSet enrollmentRS) throws Exception{
		
		enrollmentRS.beforeFirst();
		int totalStudentCount = 0;
		if(enrollmentRS.next()) {
			String subjectAlg1Check = enrollmentRS.getString("SUB_ALG1_CHK");
			String subjectAlg2Check = enrollmentRS.getString("SUB_ALG2_CHK");
			String subjectUsHisCheck = enrollmentRS.getString("SUB_USHIS_CHK");
			String subjectBioCheck = enrollmentRS.getString("SUB_BIO_CHK");
			String subjectGeoCheck = enrollmentRS.getString("SUB_GEO_CHK");
			String subjectEng2Check = enrollmentRS.getString("SUB_ENG2_CHK");
			String subjectEng3Check = enrollmentRS.getString("SUB_ENG3_CHK");
			
			String subjectAlg1Data = enrollmentRS.getString("SUB_ALG1");
			String subjectAlg2Data = enrollmentRS.getString("SUB_ALG2");
			String subjectUsHisData = enrollmentRS.getString("SUB_USHIS");
			String subjectBioData = enrollmentRS.getString("SUB_BIO");
			String subjectGeoData = enrollmentRS.getString("SUB_GEO");
			String subjectEng2Data = enrollmentRS.getString("SUB_ENG2");
			String subjectEng3Data = enrollmentRS.getString("SUB_ENG3");
		
				if (subjectAlg1Check != null && subjectAlg1Check.equals("1"))
					totalStudentCount += Integer.parseInt(subjectAlg1Data != null && !("").equals(subjectAlg1Data) ? subjectAlg1Data : "0")
							* getContentArea(1);
				if (subjectAlg2Check != null && subjectAlg2Check.equals("1"))
					totalStudentCount += Integer.parseInt(subjectAlg2Data != null && !("").equals(subjectAlg2Data) ? subjectAlg2Data : "0") 
							* getContentArea(1);
				if (subjectUsHisCheck != null && subjectUsHisCheck.equals("1"))
					totalStudentCount += Integer.parseInt(subjectUsHisData != null && !("").equals(subjectUsHisData) ? subjectUsHisData : "0")
							* getContentArea(1);
				if (subjectBioCheck != null && subjectBioCheck.equals("1"))
					totalStudentCount += Integer.parseInt(subjectBioData != null && !("").equals(subjectBioData) ? subjectBioData : "0")
							* getContentArea(1);
				if (subjectGeoCheck != null && subjectGeoCheck.equals("1"))
					totalStudentCount += Integer.parseInt(subjectGeoData != null && !("").equals(subjectGeoData) ? subjectGeoData : "0")
							* getContentArea(1);
				if (subjectEng2Check != null && subjectEng2Check.equals("1"))
					totalStudentCount += Integer.parseInt(subjectEng2Data != null && !("").equals(subjectEng2Data) ? subjectEng2Data : "0") 
							* getContentArea(1);
				if (subjectEng3Check != null && subjectEng3Check.equals("1"))
					totalStudentCount += Integer.parseInt(subjectEng3Data != null && !("").equals(subjectEng3Data) ? subjectEng3Data : "0") 
							* getContentArea(1);
		}
		return totalStudentCount;
	}
	private static int getContentArea(int grade) {
		int numberContent = 0;
		if(grade == 1)
			return 1;//for Subject only
		else if (grade == 3)
			numberContent = 2;//considering TS level
		else if (grade == 4)
			numberContent = 3;
		else if (grade == 5)
			numberContent = 3;
		else if (grade == 6)
			numberContent = 3;
		else if (grade == 7)
			numberContent = 3;
		else if (grade == 8)
			numberContent = 2;
	
		return numberContent;
	}


}
