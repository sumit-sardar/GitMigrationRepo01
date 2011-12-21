package com.ctb.lexington.domain.score.controller.tacontroller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Map;
import java.util.TimeZone;

import com.ctb.lexington.db.data.AdminData;
import com.ctb.lexington.db.data.ContextData;
import com.ctb.lexington.db.data.CurriculumData;
import com.ctb.lexington.db.data.OrgNodeData;
import com.ctb.lexington.db.data.ReportingLevels;
import com.ctb.lexington.db.data.ScoreMoveData;
import com.ctb.lexington.db.data.StsTestResultFactData;
import com.ctb.lexington.db.data.StsTotalStudentScoreData;
import com.ctb.lexington.db.data.StudentData;
import com.ctb.lexington.db.data.StudentDemographicData;
import com.ctb.lexington.db.data.StudentItemResponseData;
import com.ctb.lexington.db.data.StudentItemScoreData;
import com.ctb.lexington.db.data.StudentPredictedScoresData;
import com.ctb.lexington.db.data.StudentScoreSummaryData;
import com.ctb.lexington.db.data.StudentSubtestScoresData;
import com.ctb.lexington.db.data.StudentTestData;
import com.ctb.lexington.db.data.UserData;
import com.ctb.lexington.db.irsdata.IrsDemographicData;
import com.ctb.lexington.domain.score.controller.AdminController;
import com.ctb.lexington.domain.score.controller.CurriculumController;
import com.ctb.lexington.domain.score.controller.OrgNodeController;
import com.ctb.lexington.domain.score.controller.StudentController;
import com.ctb.lexington.domain.score.controller.TestResultController;
import com.ctb.lexington.domain.teststructure.ValidationStatus;
import com.ctb.lexington.exception.CTBSystemException;
import com.ctb.lexington.exception.DataException;

public class TATestResultController implements TestResultController{
	
	private Connection conn;
    private ScoreMoveData data;
    private ReportingLevels reportingLevels;	
	
	 public TATestResultController(Connection conn, ScoreMoveData data, ReportingLevels reportingLevels) {
	        this.conn = conn;
	        this.data = data;
	        this.reportingLevels = reportingLevels;
	    }
	 
	 
	 public void run(ValidationStatus rosterValidationStatus) throws IOException, DataException, CTBSystemException, SQLException {
	        // gather collected data
	    	IrsDemographicData demographicData = getIrsDemographics(data.getDemographicData());
	        OrgNodeData orgNodeData = data.getOrgNodeData();
	        StudentData studentData = data.getStudentData();
	        AdminData adminData = data.getAdminData();
	        CurriculumData curriculumData = data.getCurriculumData();
	        StudentTestData testData = data.getTestData();
	        StudentSubtestScoresData studentSubtestScoresData = data.getStudentSubtestScoresData();
	        StudentScoreSummaryData studentScoreSummaryData = data.getStudentScoreSummaryData();
	        StudentItemScoreData studentItemScoreData = data.getStudentItemScoreData();
	        StsTestResultFactData factData = data.getStsTestResultFactData();
	        UserData userData = data.getUserData();
	        StsTotalStudentScoreData totalStudentScoreData = data.getStsTotalStudentScoreData();
	        StudentPredictedScoresData predictedData = data.getStudentPredictedScoresData();
	        StudentItemResponseData studentItemResponseData = data.getStudentItemResponseData();
	        // persist context
	        new OrgNodeController(conn, orgNodeData, adminData).run();
	        new StudentController(conn, studentData).run();
	        new AdminController(conn, adminData, curriculumData, new Long(studentData.getGrade().equals("AD")?1:2)).run();
	        
	        // gather context dim ids for fact records
	        ContextData context = new ContextData();
	        
	        Timestamp completionTime = testData.getMaxCompletionTime(adminData.getTimeZone());
	        if(completionTime == null) {
	            int tzOffset = TimeZone.getTimeZone(adminData.getTimeZone()).getOffset(System.currentTimeMillis());
	            completionTime = new Timestamp(System.currentTimeMillis() + tzOffset);
	        }
	                
	        context.setTestStartTimestamp(studentData.getStartDateTime());
	        context.setTestCompletionTimestamp(completionTime);
	        context.setOrgNodeId(orgNodeData.getOrgNodeId());
	        context.setStudentId(studentData.getOasStudentId());
	        context.setSessionId(adminData.getSessionId());
	        context.setCurrentResultId(new Long(rosterValidationStatus.isValid()?1:2));
	        context.setGradeId(new Long(studentData.getGrade().equals("AD")?1:2));
	        context.setAssessmentId(adminData.getAssessmentId());
	        context.setAssessmentType(adminData.getAssessmentType());
	        context.setProgramId(adminData.getProgramId());
	        context.setDemographicData(demographicData);
	        
	        new CurriculumController(conn, curriculumData, adminData, context).run();
	        System.out.println("***** SCORING: Persisted dimension data.");
	        
	        // persist scores
	        new StudentPredictedScoresController(conn, predictedData, curriculumData, context).run();
	        System.out.println("***** SCORING: TestResultController: Persisted predicted fact data.");
	        new StudentCompositeScoresController(conn, totalStudentScoreData, predictedData, curriculumData, context).run();
	        System.out.println("***** SCORING: TestResultController: Persisted composite fact data.");
	        new StudentContentAreaScoresController(conn, studentSubtestScoresData, factData, curriculumData, testData, adminData, context).run();
	        System.out.println("***** SCORING: TestResultController: Persisted content area fact data.");
	        new StudentObjectiveScoresController(conn, studentScoreSummaryData, curriculumData, testData, adminData, context).run();
	        System.out.println("***** SCORING: TestResultController: Persisted objective fact data.");
	     //   new StudentItemScoresController(conn, studentItemScoreData, studentItemResponseData, curriculumData, testData, adminData, context).run();
	     //   System.out.println("***** SCORING: TestResultController: Persisted item fact data.");
	    
	        new StudentResultStatusController(conn, context).run();
	        System.out.println("***** SCORING: Marked prior results non-current as necessary.");
	    }
	 
	 
	 public IrsDemographicData getIrsDemographics(StudentDemographicData data){
 		final IrsDemographicData details = new IrsDemographicData();
 		Map rd = data.getResearchData();
     
 		details.setAttr1Id(new Long(6));
 		if(rd.containsKey("ELL")) {
 		ArrayList<String> lell = (ArrayList<String>)rd.get("ELL");
	    		String ELL = lell.get(0);
	    		details.setAttr1Id(new Long(("Yes".equals(ELL) || ("Y".equals(ELL)))?5:
	                                    ("True".equals(ELL) || ("T".equals(ELL)))?5:6));
 		}
 	 
 		details.setAttr2Id(new Long(41));
 		if(rd.containsKey("Ethnicity")) {
 		ArrayList<String> lethnicity = (ArrayList<String>)rd.get("Ethnicity");
	    		String ethnicity = lethnicity.get(0);
	    		details.setAttr2Id(new Long(("Asian or Pacific Islander".equals(ethnicity))?35:
	                                    ("Asian/Pacific Islander".equals(ethnicity))?35:
	                                    ("American Indian or Alaska Native".equals(ethnicity))?36:
	                                    ("African American or Black".equals(ethnicity))?37:
	                                    ("Hispanic or Latino".equals(ethnicity))?38:
	                                    ("Caucasian".equals(ethnicity))?39:
	                                    ("Multi-ethnic".equals(ethnicity))?40:41));
 		}
     
 		details.setAttr3Id(new Long(6));
 		if(rd.containsKey("Free Lunch")) {
 		ArrayList<String> lunch = (ArrayList<String>)rd.get("Free Lunch");
	    		String freelunch = lunch.get(0);
	    		details.setAttr3Id(new Long(("Yes".equals(freelunch) || ("Y".equals(freelunch)))?5:
	                                    ("True".equals(freelunch) || ("T".equals(freelunch)))?5:6));
 		}
 		details.setAttr4Id(new Long(("Female".equals(data.getGender()))?7:
 								("Male".equals(data.getGender()))?8:
                                 ("F".equals(data.getGender()))?7:
                                 ("M".equals(data.getGender()))?8:9));

 	
 		details.setAttr5Id(new Long(6));
 		if(rd.containsKey("IEP")) {
 		ArrayList<String> iepl = (ArrayList<String>)rd.get("IEP");
	    			String iep = iepl.get(0);
	    		details.setAttr5Id(new Long(("Yes".equals(iep) || ("Y".equals(iep)))?5:
	                                    ("True".equals(iep) || ("T".equals(iep)))?5:6));
 		}
                                 
 		details.setAttr6Id(new Long(13));
 		if(rd.containsKey("Labor Force Status")) {
 		ArrayList<String> labour = (ArrayList<String>)rd.get("Labor Force Status");
 			String lfstat = labour.get(0);
	    		details.setAttr6Id(new Long(("Employed".equals(lfstat))?10:
	                                    ("Unemployed".equals(lfstat))?11:
	                                    ("Not in Labor Force".equals(lfstat))?12:13));
 		}
 	
 		details.setAttr7Id(new Long(6));
 		if(rd.containsKey("LEP")) {
 		ArrayList<String> llep = (ArrayList<String>)rd.get("LEP");
 			String lep = llep.get(0);
 			details.setAttr7Id(new Long(("Yes".equals(lep) || ("Y".equals(lep)))?5:
                                 	("True".equals(lep) || ("T".equals(lep)))?5:6));
 		}
     
 		details.setAttr8Id(new Long(6));
 		if(rd.containsKey("Migrant")) {
 		ArrayList<String> mig = (ArrayList<String>)rd.get("Migrant");
 			String migrant = mig.get(0);
 			details.setAttr8Id(new Long(("Yes".equals(migrant) || "Y".equals(migrant))?5:
                                 	("True".equals(migrant) || "T".equals(migrant))?5:6));
 		}
     
 		details.setAttr9Id(new Long(("Y".equals(data.getScreenMagnifier()))?7:
         					("T".equals(data.getScreenMagnifier()))?7:8));
 		details.setAttr11Id(new Long(("Y".equals(data.getScreenReader()))?7:
								("T".equals(data.getScreenReader()))?7:8));
 		details.setAttr12Id(new Long(("Y".equals(data.getCalculator()))?7:
								("T".equals(data.getCalculator()))?7:8));
 		details.setAttr13Id(new Long(("Y".equals(data.getTestPause()))?7:
								("T".equals(data.getTestPause()))?7:8));
 		details.setAttr14Id(new Long(("Y".equals(data.getUntimedTest()))?7:
								("T".equals(data.getUntimedTest()))?7:8));
 		details.setAttr15Id(new Long((data.getQuestionBGColor() != null || data.getQuestionFontColor() != null)?7:8));
 		details.setAttr16Id(new Long((data.getQuestionFontSize() != null)?7:8));
 	
 		details.setAttr10Id(new Long(6));
 		if(rd.containsKey("Section 504")) {
 		ArrayList<String> section = (ArrayList<String>)rd.get("Section 504");
 			String sec504 = section.get(0);
 			details.setAttr10Id(new Long(("Yes".equals(sec504) || "Y".equals(sec504))?5:
                                 	("True".equals(sec504) || "T".equals(sec504))?5:6));
 		}
      
 	 return details;
 }

}
