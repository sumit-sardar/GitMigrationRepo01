package testWebService;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import java.util.TimeZone;

import javax.servlet.http.HttpSession;

import org.apache.axis2.context.ConfigurationContext;
import org.apache.axis2.context.ConfigurationContextFactory;
import org.apache.beehive.netui.pageflow.Forward;
import org.apache.beehive.netui.pageflow.PageFlowController;
import org.apache.beehive.netui.pageflow.annotations.Jpf;
import org.apache.beehive.controls.api.bean.Control;
import org.apache.commons.httpclient.protocol.Protocol;

import com.ctb.control.testAdmin.TestSessionStatus;
import com.ctb.exception.CTBBusinessException;
import com.ctb.util.RosterUtil;
import com.mcgraw_hill.ctb.acuity.scoring.ScoringServiceStub;
import com.mcgraw_hill.ctb.acuity.scoring.ScoringServiceStub.AuthenticatedUser;
import com.mcgraw_hill.ctb.acuity.scoring.ScoringServiceStub.ProcessStudentScore;
import com.mcgraw_hill.ctb.acuity.scoring.ScoringServiceStub.ScoringStatus;
import com.mcgraw_hill.ctb.acuity.scoring.ScoringServiceStub.StudentScore;

import com.ctb.bean.testAdmin.Item;
import com.ctb.bean.testAdmin.Node;
import com.ctb.bean.testAdmin.NodeData;
import com.ctb.bean.testAdmin.RosterElement;
import com.ctb.bean.testAdmin.RosterElementData;
import com.ctb.bean.testAdmin.ScheduledSession;
import com.ctb.bean.testAdmin.SessionStudent;
import com.ctb.bean.testAdmin.TestElement;
import com.ctb.bean.testAdmin.TestSession;
import com.ctb.bean.testAdmin.TestSessionData;

import dto.Accommodation;
import dto.SecureUser;
import dto.Session;
import dto.SessionStatus;
import dto.StudentStatus;
import dto.Subtest;

import dto.Assignment;
import dto.AssignmentList;
import dto.ContentArea;
import dto.OrgNode;
import dto.OrgNodeList;
import dto.Question;
import dto.Roster;
import dto.RosterList;
import dto.StudentResponse;
import dto.Subject;
import dto.SubtestInfo;
import dto.TestStructure;
import dto.UserInfo;

import com.ctb.util.RosterUtil;
import utils.CryptoUtils;
import com.ctb.control.testAdmin.ScheduleTest;

@Jpf.Controller()
public class TestWebServiceController extends PageFlowController
{
    static final long serialVersionUID = 1L;
	private static final String AUTHENTICATE_USER_NAME = "tng_acuity";
	private static final String AUTHENTICATE_PASSWORD = "acuity101";
	private static final String ACUITY_USER_TYPE = "QA";
	private static final String DELETE_SESSION = "DELETE";
	 
	@Control
	private SchedulingWSServiceControl schedulingWSServiceControl;
	
	@Control
	private RosterStatusWSServiceControl rosterStatusWSServiceControl;

	@Control
	private ClickerWSServiceControl clickerWSServiceControl;
	
	@Control
	private TestSessionStatus testSessionStatus;
	
	@Control
	private ScheduleTest scheduleTest;
	
    @Control()
    private com.ctb.control.db.TestRoster rosters;
	
    @Control()
    private com.ctb.control.db.ItemSet itemSet;

	
	/**
	 * Callback that is invoked when this controller instance is created.
	 */
	@Override
	protected void onCreate() {
	}

	/**
	 * Callback that is invoked when this controller instance is destroyed.
	 */
	@Override
	protected void onDestroy(HttpSession session) {
	}
	
    @Jpf.Action(forwards = { 
            @Jpf.Forward(name = "success", path = "testWebService.jsp") 
        }) 
    protected Forward begin()
    {
        return new Forward("success");
    }

    @Jpf.Action(forwards = { 
            @Jpf.Forward(name = "success", path = "testClicker.jsp") 
        }) 
    protected Forward clickerService()
    {
		String resultText = "";
    	String status = safeGuardString((String)this.getRequest().getParameter("status"));
    	String userName = safeGuardString((String)this.getRequest().getParameter("userName"));
    	String password = safeGuardString((String)this.getRequest().getParameter("password"));
    	String orgNodeId = safeGuardString((String)this.getRequest().getParameter("orgNodeId"));
    	String sessionId = safeGuardString((String)this.getRequest().getParameter("sessionId"));
    	String userKey = safeGuardString((String)this.getRequest().getParameter("userKey"));
    	String decryptedUserName = safeGuardString((String)this.getRequest().getParameter("decryptedUserName"));
    	String decryptedUserId = safeGuardString((String)this.getRequest().getParameter("decryptedUserId"));
    	String decryptedTimeStamp = safeGuardString((String)this.getRequest().getParameter("decryptedTimeStamp"));

    	/*
    	if ((status.length() > 0) && (! "authenticateUser".equals(status))) {
	    	if (userKey.length() > 0) {
	    		if (! CryptoUtils.validateRequest(userKey)) {
	    			status = "";
	    			resultText = "Invalid Userkey.";   	
	    		}
	    	}
	    	else {
	    		if (status.length() > 0) {
	    			status = "";
	    			resultText = "Invalid Userkey.";
	    		}
	    	}
    	}
    	*/
    	
    	if (status.length() > 0) {
    		
    		// authenticateUser
    		if ("authenticateUser".equals(status)) {
    			
    			UserInfo userInfo = clickerWSServiceControl.authenticateUser(userName, password);   
	    		if (userInfo.getStatus().equals("OK")) {
	    			resultText = "authenticateUser: SUCCESS" + "<br/>userName: " + userName + 
	    										"<br/>" + "userId: " + userInfo.getUserId().toString() +
	    										"<br/>" + "userKey: " + userInfo.getUserKey();
	    			userKey = userInfo.getUserKey();
	    		}
	    		else {
	    			resultText = "authenticateUser: FAILED" + "<br/>" + userInfo.getStatus();
	    		}
	    		orgNodeId = "";
	    		sessionId = "";
    		}

    		// getUserTopNode
    		if ("getUserTopNode".equals(status)) {
    			
    			OrgNodeList orgNodeList = clickerWSServiceControl.getUserTopNodes(userKey);
    			
    			if (orgNodeList.getStatus().equals("OK")) {
    				resultText = "getUserTopNode: SUCCESS" ;
    				resultText += "<br/>orgNodeName - orgNodeId<br/>" ;
    				OrgNode[] orgNodes = orgNodeList.getOrgNodes();
    				
        	        for (int i=0; i < orgNodes.length; i++) {
        	        	OrgNode node = orgNodes[i];
        	        	resultText += ("<br/>" + node.getName() + " - " + node.getId()); 
        				orgNodeId = node.getId().toString();
        	        }    				
    			}
    			else {
	    			resultText = "getUserTopNodes: FAILED" + "<br/>" + orgNodeList.getStatus();
    			}
    		}

    		// getChildrenNodes
    		if ("getChildrenNodes".equals(status)) {
    			OrgNodeList orgNodeList = clickerWSServiceControl.getChildNodes(userKey, orgNodeId);
    			
    			if (orgNodeList.getStatus().equals("OK")) {
    				resultText = "getChildrenNodes: SUCCESS" ;
    				resultText += "<br/>orgNodeName - orgNodeId<br/>" ;
    				OrgNode[] orgNodes = orgNodeList.getOrgNodes();
    				
        	        for (int i=0; i < orgNodes.length; i++) {
        	        	OrgNode node = orgNodes[i];
        	        	resultText += ("<br/>" + node.getName() + " - " + node.getId()); 
        	        }    				
    			}
    			else {
	    			resultText = "getChildrenNodes: FAILED" + "<br/>" + orgNodeList.getStatus();
    			}
    		}

    		// getSessionsForNode
    		if ("getSessionsForNode".equals(status)) {
    			AssignmentList assignmentList = clickerWSServiceControl.getSessionsForNode(userKey, orgNodeId);
    			
    			if (assignmentList.getStatus().equals("OK")) {
    				resultText = "getSessionsForNode: SUCCESS" ;
    				resultText += "<br/>sessionName - sessionId - accessCode - startDate - endDate - enforceBreak - enforceTimeLimit<br/>" ;
    				Assignment[] assignments = assignmentList.getAssignments();
    				
        	        for (int i=0; i < assignments.length; i++) {
        	        	Assignment assignment = assignments[i];
        	            if (assignment != null) {
            	        	resultText += ("<br/>" + assignment.getSessionName() + " - " + 
            	        			assignment.getSessionId() + " - " + 
            	        			assignment.getAccessCode() + " - " + 
            	        			assignment.getStartDate() + " - " + 
            	        			assignment.getEndDate() + " - " + 
            	        			assignment.getEnforceBreak() + " - " + 
            	        			assignment.getEnforceTimeLimit()); 
            	        	sessionId = assignment.getSessionId().toString();
        	            }
        	        }    				
    			}
    			else {
	    			resultText = "getSessionsForNode: FAILED" + "<br/>" + assignmentList.getStatus();
    			}
    		}

    		// getRostersInSession
    		if ("getRostersInSession".equals(status)) {
    			RosterList rosterList = clickerWSServiceControl.getRostersInSession(userKey, sessionId);
    			
    			if (rosterList.getStatus().equals("OK")) {
    				resultText = "getRostersInSession: SUCCESS" ;
    				resultText += "<br/>rosterId - loginName - firstName - lastName - studentKey<br/>" ;
    				Roster[] rosters = rosterList.getRosters();
    				
        	        for (int i=0; i < rosters.length; i++) {
        	        	Roster roster = rosters[i];
        	            if (roster != null) {
            	        	resultText += "<br/>";
            	        	resultText += (roster.getRosterId() + " - " + 
            	        			roster.getLoginName() + " - " + 
            	        			roster.getFirstName() + " - " + 
            	        			roster.getLastName() + " - " + 
            	        			roster.getStudentKey()); 
        	        		resultText += "<br/>";
            	        	SubtestInfo[] subtests = roster.getSubtests();
            	        	for (int j=0 ; j<subtests.length ; j++) {
            	        		SubtestInfo subtest = subtests[j];
            	        		resultText += (subtest.getSubtestId() + " , ");
            	        	}
        	        		resultText += "<br/>";
        	            }
        	        }
    			}
    			else {
	    			resultText = "getRostersInSession: FAILED" + "<br/>" + rosterList.getStatus();
    			}
    		}

    		// getTestStructure
    		if ("getTestStructure".equals(status)) {
    			TestStructure testStructure = clickerWSServiceControl.getTestStructure(userKey, sessionId); 
    			
    			if (testStructure.getStatus().equals("OK")) {
    				resultText = "getTestStructure: SUCCESS";
					resultText += "<br/>testId=" + testStructure.getTestId() + " - testName=" + testStructure.getTestName() + "<br/><br/>";					

					resultText += "<table>";
					ContentArea[] contentAreas = testStructure.getContentAreas();
					for (int i=0 ; i<contentAreas.length ; i++) {
						ContentArea contentArea = contentAreas[i];
						resultText += "<tr><td>";
						resultText += "TS=" + contentArea.getContentAreaId() + " - " + contentArea.getContentAreaName() + " - " + contentArea.getAccessCode();					
						resultText += "</td></tr>";
						
						SubtestInfo[] subtests = contentArea.getSubtests();
						for (int j=0 ; j<subtests.length ; j++) {	
							SubtestInfo subtest = subtests[j];
							resultText += "<tr><td>";
							resultText += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
							resultText += "TD=" + subtest.getSubtestId() + " - " + subtest.getSubtestName() + 
												" - " + subtest.getSubtestLevel();					
							resultText += "</td></tr>";
							resultText += "<tr><td>";
							resultText += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
							
							Question[] questions = subtest.getQuestions();
							for (int k=0 ; k<questions.length ; k++) {		
								Question question = questions[k];
								resultText += (question.getCorrectAnswer() + ",");
							}
							resultText += "</td></tr>";
						}
					}
	    			resultText += "</table>";
	    		}
    			else {
	    			resultText = "getTestStructure: FAILED" + "<br/>" + testStructure.getStatus();
    			}
    		}
    		
    		// submitStudentResponses
       		if ("submitStudentResponses".equals(status)) {
   				resultText = "submitStudentResponses: SUCCESS" + "<br/>";	       				
				
    			String responsevalues = (String)this.getRequest().getParameter("responses");  
    			resultText += ("response values = " + responsevalues + "<br/>");
    			
    			String[] responses = initializeResponses(responsevalues);
    			int index = 0;
    			
    			TestStructure testStructure = clickerWSServiceControl.getTestStructure(userKey, sessionId);
				resultText += "testId=" + testStructure.getTestId() + " - testName=" + testStructure.getTestName() + "<br/><br/>";					
    			
    		    Assignment assignment = new Assignment();
    		    Integer testAdminId = newInteger(sessionId);
    		    
    		    try {
    				decryptedUserName = CryptoUtils.decryptUserKey(userKey, 0);
    		    	System.out.println("decryptedUserName=" + decryptedUserName);
					TestSessionData tsData = this.testSessionStatus.getTestSessionDetails(decryptedUserName, testAdminId);
					TestSession[] testSessions = tsData.getTestSessions();
					TestSession testSession = testSessions[0];
	    		    assignment.setSessionId(testAdminId);
					assignment.setSessionName(testSession.getTestAdminName());
					assignment.setAccessCode(testSession.getAccessCode());
					assignment.setStartDate(testSession.getLoginStartDate().toString());
					assignment.setEndDate(testSession.getLoginEndDate().toString());
					assignment.setEnforceBreak(testSession.getEnforceBreak());
					assignment.setEnforceTimeLimit(testSession.getEnforceTimeLimit());
					assignment.setSessionName(testSession.getSessionNumber());
				} catch (CTBBusinessException e) {
					e.printStackTrace();
				}
    		    
    			RosterList rosterList = clickerWSServiceControl.getRostersInSession(userKey, sessionId);
    			Roster[] rosters = rosterList.getRosters();
    			
    			for (int i=0 ; i<rosters.length ; i++) {
    				Roster roster = rosters[i];
    				
    	        	resultText += "<br/>ROSTER: " + (roster.getRosterId() + " - " + roster.getLoginName() + " - " + 
    	        						roster.getFirstName() + " - " +	roster.getLastName()) + "<br/>"; 
    				
    				SubtestInfo[] subtests = roster.getSubtests();
	    			for (int j=0 ; j<subtests.length ; j++) {
	    				SubtestInfo subtest = subtests[j];
	    				
	    				initialzeQuestions(responses[index], subtest, testStructure);
	    				index++; 
	    				if (index > 3) index = 0;
	    				
	    				resultText += (subtest.getSubtestId() + " - " + subtest.getSubtestName() + "<br/>");
	    				
	    				Question[] questions = subtest.getQuestions();
		    			for (int k=0 ; k<questions.length ; k++) {
		    				Question question = questions[k];
		    				resultText +=(question.getQuestionId() + " - " + question.getCorrectAnswer() + " - " + question.getResponse() + "<br/>");
		    			}
	    			}	    				
    			}
    			
    			assignment.setRosters(rosterList.getRosters());
    			
    			
       			StudentResponse studentResponse = new StudentResponse();
       			studentResponse.setAssignment(assignment);
				
       			String ret = clickerWSServiceControl.submitStudentResponses(userKey, studentResponse);
				
       			if (ret.equals("OK")) {
       				//resultText += ("<br/><br/>" + "submitStudentResponses: SUCCESS" + "<br/>");	       				
       			}
       			else {
       				resultText += ("<br/><br/>" + "submitStudentResponses: FAILED" + "<br/>" + ret);	       				
       			}
    		}
    	}
    	
    	this.getRequest().setAttribute("resultText", resultText);
    	this.getRequest().setAttribute("userKey", userKey);
    	this.getRequest().setAttribute("userName", userName);
    	this.getRequest().setAttribute("password", password);
    	this.getRequest().setAttribute("orgNodeId", orgNodeId);
    	this.getRequest().setAttribute("sessionId", sessionId);
    	
		decryptedUserName = CryptoUtils.decryptUserKey(userKey, 0);
		decryptedUserId = CryptoUtils.decryptUserKey(userKey, 1);	 
		decryptedTimeStamp = CryptoUtils.decryptUserKey(userKey, 2);	 
    	
    	this.getRequest().setAttribute("decryptedUserName", decryptedUserName);
    	this.getRequest().setAttribute("decryptedUserId", decryptedUserId);
    	this.getRequest().setAttribute("decryptedTimeStamp", decryptedTimeStamp);
    	
        return new Forward("success");
    }
    
    @Jpf.Action(forwards = { 
            @Jpf.Forward(name = "success", path = "testRosterStatus.jsp") 
        }) 
    protected Forward rosterStatusService()
    {
		// init user
		SecureUser user = new SecureUser();
		user.setUserName(AUTHENTICATE_USER_NAME);
		user.setPassword(AUTHENTICATE_PASSWORD);
		user.setUserType(ACUITY_USER_TYPE);

		// populate session
	    SessionStatus session = populateSessionStatus();
	    
		// call web service
		session = rosterStatusWSServiceControl.getRosterStatus(user, session);

		String resultText = "Web service returns with status = " + session.getStatus();
    	this.getRequest().setAttribute("resultText", resultText);
	    
	    String infoText = "";
	    
	    if (session.getStatus().equals("OK")) {
		    StudentStatus[] students = session.getStudents();    
	    	for (int i=0 ; i<students.length ; i++) {
	    		StudentStatus student = students[i];
	    		String status = student.getRosterStatus(); 		
	    		String text = "studentId=" + student.getStudentId() + " - status= " + status;
	    		infoText += ("<br/>" + text);
	    	}
	    }    	

    	this.getRequest().setAttribute("infoText", infoText);
    	
        return new Forward("success");
    }
    
    @Jpf.Action(forwards = { 
            @Jpf.Forward(name = "success", path = "testWebService.jsp") 
        }) 
    protected Forward schedulingService()
    {
		// init user
		SecureUser user = new SecureUser();
		user.setUserName(AUTHENTICATE_USER_NAME);
		user.setPassword(AUTHENTICATE_PASSWORD);
		user.setUserType(ACUITY_USER_TYPE);

		// populate session
	    dto.Session session = populateSessionData();
		 
	    long startTime = System.currentTimeMillis();
	    
		// call web service
		session = schedulingWSServiceControl.scheduleSession(user, session);
		 
	    long elapsedTimeInSeconds = (System.currentTimeMillis() - startTime) / 1000;
		
	    String resultText = "Web service returns with status = " + session.getStatus();
	    resultText += "<br/>Elapse Time:" + String.valueOf(elapsedTimeInSeconds) + " seconds";
    	this.getRequest().setAttribute("resultText", resultText);
    	
    	String infoText = getInfoText(session);
    	this.getRequest().setAttribute("infoText", infoText);

        return new Forward("success");
    }
    
	/**
	 * populateSessionData
	 */
    private Session populateSessionData()
    {
		// init session
    	Integer sessionId = null;
		Session session = new Session();
		String productType = this.getRequest().getParameter("productType");
		session.setProductId(Integer.valueOf(productType));
		session.setLevel(this.getRequest().getParameter("level"));
		session.setSessionName(this.getRequest().getParameter("sessionName"));
		session.setStartDate(this.getRequest().getParameter("startDate"));
		session.setEndDate(this.getRequest().getParameter("endDate"));
		session.setStartTime(this.getRequest().getParameter("startTime"));
		session.setEndTime(this.getRequest().getParameter("endTime"));
		session.setTimeZone(this.getRequest().getParameter("timeZone"));
		session.setHasBreak(new Boolean(this.getRequest().getParameter("hasBreak") != null));
		
		if(this.getRequest().getParameter("sesionId") != null && (this.getRequest().getParameter("sesionId")).trim().length()>0){
			String sessionIdString = (this.getRequest().getParameter("sesionId")).trim();
			sessionId = Integer.valueOf(sessionIdString);
			
			if (this.getRequest().getParameter("removeSession") != null) {
				session.setStatus(DELETE_SESSION);	
			}
		}
		session.setSessionId(sessionId);
		
		
		// init subtests
		Subtest subtest = null;
		int subtestCount = 0;
		if (this.getRequest().getParameter("subtest1") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest2") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest3") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest4") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest5") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest6") != null) subtestCount++;
		if (this.getRequest().getParameter("subtest7") != null) subtestCount++;
		Subtest[] subtests = new Subtest[subtestCount];
		
		Long key;
		int index = 0;		
		if (this.getRequest().getParameter("subtest1") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Reading - Part 1"); 
			key = getKeyValue("subtestKey1");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest2") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Reading - Part 2"); 
			key = getKeyValue("subtestKey2");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest3") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Language"); 
			key = getKeyValue("subtestKey3");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest4") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Mathematics - Part 1"); 
			key = getKeyValue("subtestKey4");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest5") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Mathematics - Part 2"); 
			key = getKeyValue("subtestKey5");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest6") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Science"); 
			key = getKeyValue("subtestKey6");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		if (this.getRequest().getParameter("subtest7") != null) {
			subtest = new Subtest(); 
			subtest.setSubtestName("TerraNova Social Studies"); 
			key = getKeyValue("subtestKey7");
			subtest.setSubTestKey(key);
			subtests[index] = subtest; 
			index++;
		}
		session.setSubtests(subtests);
		
		// init students
		String firstName = null;
		String studentId = null;
		dto.Student student = null;
		int studentCount = 0;
		
		studentId = this.getRequest().getParameter("studentId1");
		firstName = this.getRequest().getParameter("firstName1");
		if (((studentId != null) && (studentId.trim().length() > 0)) || (firstName != null) && (firstName.trim().length() > 0)) studentCount++;
		
		studentId = this.getRequest().getParameter("studentId2");
		firstName = this.getRequest().getParameter("firstName2");
		if (((studentId != null) && (studentId.trim().length() > 0)) || (firstName != null) && (firstName.trim().length() > 0)) studentCount++;
		
		studentId = this.getRequest().getParameter("studentId3");	
		firstName = this.getRequest().getParameter("firstName3");
		if (((studentId != null) && (studentId.trim().length() > 0)) || (firstName != null) && (firstName.trim().length() > 0)) studentCount++;
		
		studentId = this.getRequest().getParameter("studentId4");	
		firstName = this.getRequest().getParameter("firstName4");
		if (((studentId != null) && (studentId.trim().length() > 0)) || (firstName != null) && (firstName.trim().length() > 0)) studentCount++;
		
		dto.Student[] students = new dto.Student[studentCount];
		
		index = 0;	
		
		studentId = this.getRequest().getParameter("studentId1");
		if ((studentId != null) && (studentId.trim().length() > 0)) {
			student = new dto.Student(); 
			student.setStudentId(new Integer(studentId));
			if(this.getRequest().getParameter("studentRemoveKey1") != null){
				student.setRemoveStatus(true);
			}
			students[index] = student;
			index++;
		}
		else {
			firstName = this.getRequest().getParameter("firstName1");
			if ((firstName != null) && (firstName.trim().length() > 0)) {
				student = new dto.Student(); 
				student.setFirstName(this.getRequest().getParameter("firstName1")); 
				student.setLastName(this.getRequest().getParameter("lastName1")); 
				student.setGender(this.getRequest().getParameter("gender1")); 
				student.setGrade(this.getRequest().getParameter("grade1")); 
				key = getKeyValue("studentKey1");
				student.setStudentKey(key);
				student.setBirthdate(new Date());			
				students[index] = student;
				index++;
			}
		}

		studentId = this.getRequest().getParameter("studentId2");
		if ((studentId != null) && (studentId.trim().length() > 0)) {
			student = new dto.Student(); 
			student.setStudentId(new Integer(studentId));
			if(this.getRequest().getParameter("studentRemoveKey2") != null){
				student.setRemoveStatus(true);
			}
			students[index] = student;
			index++;
		}
		else {
			firstName = this.getRequest().getParameter("firstName2");
			if ((firstName != null) && (firstName.trim().length() > 0)) {
				student = new dto.Student(); 
				student.setFirstName(this.getRequest().getParameter("firstName2")); 
				student.setLastName(this.getRequest().getParameter("lastName2")); 
				student.setGender(this.getRequest().getParameter("gender2")); 
				student.setGrade(this.getRequest().getParameter("grade2")); 
				key = getKeyValue("studentKey2");
				student.setStudentKey(key);
				student.setBirthdate(new Date());			
				students[index] = student;
				index++;
			}
		}
		
		studentId = this.getRequest().getParameter("studentId3");
		if ((studentId != null) && (studentId.trim().length() > 0)) {
			student = new dto.Student(); 
			student.setStudentId(new Integer(studentId));
			if(this.getRequest().getParameter("studentRemoveKey3") != null){
				student.setRemoveStatus(true);
			}
			students[index] = student;
			index++;
		}
		else {
			firstName = this.getRequest().getParameter("firstName3");
			if ((firstName != null) && (firstName.trim().length() > 0)) {
				student = new dto.Student(); 
				student.setFirstName(this.getRequest().getParameter("firstName3")); 
				student.setLastName(this.getRequest().getParameter("lastName3")); 
				student.setGender(this.getRequest().getParameter("gender3")); 
				student.setGrade(this.getRequest().getParameter("grade3")); 
				key = getKeyValue("studentKey3");
				student.setStudentKey(key);
				student.setBirthdate(new Date());			
				students[index] = student;
				index++;
			}
		}
		
		studentId = this.getRequest().getParameter("studentId4");
		if ((studentId != null) && (studentId.trim().length() > 0)) {
			student = new dto.Student(); 
			student.setStudentId(new Integer(studentId));
			if(this.getRequest().getParameter("studentRemoveKey4") != null){
				student.setRemoveStatus(true);
			}
			students[index] = student;
			index++;
		}
		else {		
			firstName = this.getRequest().getParameter("firstName4");
			if ((firstName != null) && (firstName.trim().length() > 0)) {
				student = new dto.Student(); 
				student.setFirstName(this.getRequest().getParameter("firstName4")); 
				student.setLastName(this.getRequest().getParameter("lastName4")); 
				student.setGender(this.getRequest().getParameter("gender4")); 
				student.setGrade(this.getRequest().getParameter("grade4")); 
				key = getKeyValue("studentKey4");
				student.setStudentKey(key);
				student.setBirthdate(new Date());			
				students[index] = student;
				index++;
			}
		}
		
		String repeatCountStr = this.getRequest().getParameter("repeatCount");
		if ((repeatCountStr != null) && (repeatCountStr.trim().length() > 0)) {
			int repeatCount = Integer.valueOf(repeatCountStr).intValue();
			int totalCount = studentCount + (studentCount * repeatCount);
			dto.Student[] repeatStudents = new dto.Student[totalCount];
			index = 0;
			for (int i=0 ; i<studentCount ; i++) {
				student = students[i];
				repeatStudents[index] = student;
				index++;
				for (int j=0 ; j<repeatCount ; j++) {
					dto.Student studentRepeat = new dto.Student(); 
					studentRepeat.setFirstName(student.getFirstName()); 
					studentRepeat.setLastName(student.getLastName()); 
					studentRepeat.setGender(student.getGender()); 
					studentRepeat.setGrade(student.getGrade()); 
					studentRepeat.setStudentKey(student.getStudentKey());
					studentRepeat.setBirthdate(new Date());			
					repeatStudents[index] = studentRepeat;
					index++;
				}
			}
			session.setStudents(repeatStudents);
		}
		else {
			session.setStudents(students);
		}
		
		// init accommodations
		Accommodation accom = null;
		
		if (this.getRequest().getParameter("hasAccomm") != null) {
			accom = new Accommodation();
			
			if (this.getRequest().getParameter("calculator") != null)
				accom.setCalculator(Boolean.TRUE);
			else
				accom.setCalculator(Boolean.FALSE);
			
			if (this.getRequest().getParameter("testPause") != null)
				accom.setTestPause(Boolean.TRUE);
			else
				accom.setTestPause(Boolean.FALSE);
				
			if (this.getRequest().getParameter("untimed") != null)
				accom.setUntimedTest(Boolean.TRUE);
			else
				accom.setUntimedTest(Boolean.FALSE);
				
			if (this.getRequest().getParameter("highlighter") != null)
				accom.setHighlighter(Boolean.TRUE);
			else
				accom.setHighlighter(Boolean.FALSE);
				
			if (this.getRequest().getParameter("customColor") != null) {
				accom.setFontSize("1");
				accom.setQuestionBackgroundColor("Light blue");
				accom.setQuestionFontColor("Dark blue");
				accom.setAnswerBackgroundColor("White");
				accom.setAnswerFontColor("Black");
			}
		}
		
		session.setAccom(accom);
		
		return session;
    }

	/**
	 * populateSessionStatus
	 */
    private SessionStatus populateSessionStatus()
    {
		// init session
    	Integer sessionId = new Integer(0);
    	SessionStatus session = new SessionStatus();

		if(this.getRequest().getParameter("sesionId") != null && (this.getRequest().getParameter("sesionId")).trim().length()>0){
			String sessionIdString = (this.getRequest().getParameter("sesionId")).trim();
			sessionId = Integer.valueOf(sessionIdString);
		}
		session.setSessionId(sessionId);
		return session;
    }
    
	/**
	 * getKeyValue
	 */
    private Long getKeyValue(String name) {
    	Long value = null;
		String key = this.getRequest().getParameter(name);
		if ((key != null) && (key.trim().length() > 0)) {
			value = new Long(key);
		}
		return value;
    }

	/**
	 * getInfoText
	 */
    private String getInfoText(Session session) {
    	String infoText = "<b>Output Result:</b>";
    	infoText += "<br/>Session Id: ";
    	infoText +=session.getSessionId();
    		
    	infoText += "<br/>TAC: ";
    	for (int i=0 ; i<session.getSubtests().length ; i++) {
        	infoText += (session.getSubtests()[i].getAccessCode() + " , ");
    	}

    	infoText += "<br/>Subtest key: ";
    	for (int i=0 ; i<session.getSubtests().length ; i++) {
    		if (session.getSubtests()[i].getSubTestKey() != null)
    			infoText += (session.getSubtests()[i].getSubTestKey().toString() + " , ");
    		else
    			infoText += "null , ";
    	}

    	if (session.getStudents() != null) {
        	infoText += "<br/>Student key: ";
	    	for (int i=0 ; i<session.getStudents().length ; i++) {
	    		if (session.getStudents()[i].getStudentKey() != null)
	    			infoText += (session.getStudents()[i].getStudentKey().toString() + " , ");
	    		else
	    			infoText += "null , ";
	    	}

	    	infoText += "<br/>Student ID: ";
	    	for (int i=0 ; i<session.getStudents().length ; i++) {
	    		if (session.getStudents()[i].getStudentId() != null)
	    			infoText += (session.getStudents()[i].getStudentId().toString() + " , ");
	    		else
	    			infoText += "null , ";
	    	}
	
	    	infoText += "<br/>Student password: ";
	    	for (int i=0 ; i<session.getStudents().length ; i++) {
	    		if (session.getStudents()[i].getPassword() != null)
	    			infoText += (session.getStudents()[i].getPassword().toString() + " , ");
	    		else
	    			infoText += "null , ";
	    	}
	    	
	    	infoText += "<br/>Student update status: ";
	    	for (int i=0 ; i<session.getStudents().length ; i++) {
	    		if (session.getStudents()[i].getStatus() != null)
	    			infoText += (session.getStudents()[i].getStatus().toString() + " , ");
	    		else
	    			infoText += "null , ";
	    	}
    	}
    	
		return infoText;
    }

    @Jpf.Action(forwards = { 
            @Jpf.Forward(name = "success", path = "testProduction.jsp") 
        }) 
    protected Forward testProduction()
    {
    /*
      String resultText = "";
      
      try {
    	  //ResourceBundle rb = ResourceBundle.getBundle("webServiceUrls");
    	  //String endPointUrl = rb.getString("url");
    	  
    	  StudentScore stuScore = new StudentScore();
    	  stuScore.setStudentId(1644566);
    	  stuScore.setSessionId(234672);
    	  stuScore.setFormId("G");
    	  stuScore.setLevelId(13);
    	  ProcessStudentScore pss = new ProcessStudentScore();
    	  pss.setScore(stuScore);
    	  AuthenticatedUser  user = new AuthenticatedUser();
    	  user.setUsername("");
    	  user.setUsername("");
    	  
    	  pss.setUser(user);
    	  //String url = "http://192.168.14.136:8080/host/services/ScoringService";
    	  String url = "https://151.108.140.171/bredexsoap/services/ScoringService?wsdl";
    	  //String url = "https://172.16.80.131/bredexsoap/services/ScoringService?wsdl";    	  
    	  ScoringStatus status = null;
    	  ScoringServiceStub stub = null;
    	  
    	  try {
      		// 1.) unregister the current https protocol.  
	            org.apache.commons.httpclient.protocol.Protocol.unregisterProtocol("https");  
	               
	            // 2.) reregister the new https protocol to use the easy ssl protocol socked factory.  
	            org.apache.commons.httpclient.protocol.Protocol.registerProtocol("https",  
	             new Protocol("https", new org.apache.commons.httpclient.contrib.ssl.EasySSLProtocolSocketFactory(), 443));  
	           
      		stub = new ScoringServiceStub(url);
      		status = stub.processStudentScore(user, stuScore);
		  	} catch (Exception e) {
		  		e.printStackTrace();
      	} finally {
      		if(status != null) {
      			System.out.println("status.getStudentId() -> " + status.getStudentId());
  				System.out.println("status.getSessionId() -> " + status.getSessionId());
  				System.out.println("status.getErrorMsg() -> " + status.getErrorMsg());
  				System.out.println("status.getStatus() -> " + status.getStatus());
      		}
      		//displayScoresInRequest(studentScore);
      	}
    	  
  		if(status != null) {
    	  resultText = "status=" + status.getStatus() + " - error=" + status.getErrorMsg();
  		}
  		
        } 
      	catch (Exception e) {
      		System.err.println(e.toString());
      		e.printStackTrace();
      		resultText = e.toString();
      	}
    	
    	this.getRequest().setAttribute("resultText", resultText);
      	*/
        return new Forward("success");
    }

    private Integer newInteger(String valueStr) {
    	Integer valueInt = new Integer(0);
    	try {
        	valueInt = new Integer(valueStr);
    	}
      	catch (Exception e) {
        	valueInt = new Integer(0);
      		
      	}
		return valueInt;
    }
    
    private String safeGuardString(String value) 
	{
		if (value == null)
			value = "";
		return value.trim();
	}
	
    private String safeGuardInteger(String value) 
	{
		if (value == null)
			value = "0";
		return value.trim();
	}
    
    private void initialzeQuestions(String response, SubtestInfo srcSubtest, TestStructure testStructure) {

		ContentArea[] contentAreas = testStructure.getContentAreas();
		for (int i=0 ; i<contentAreas.length ; i++) {
			ContentArea contentArea = contentAreas[i];
			SubtestInfo[] subtests = contentArea.getSubtests();
			for (int j=0 ; j<subtests.length ; j++) {	
				SubtestInfo subtest = subtests[j];
				
				if (subtest.getSubtestId().intValue() == srcSubtest.getSubtestId().intValue()) {
					srcSubtest.setSubtestName(subtest.getSubtestName());
					Question[] questions = subtest.getQuestions();
					for (int k=0 ; k<questions.length ; k++) {		
						Question question = questions[k];
	    				question.setResponse(response);
					}
					srcSubtest.setQuestions(questions);
				}
			}
		}
		
    }

    private String[] initializeResponses(String responsevalues) {
    	String[] responses = new String[4];
    	if ("A".equals(responsevalues)) {
    		responses[0] = "A"; responses[1] = "A"; responses[2] = "A"; responses[3] = "A";
    	}
    	if ("B".equals(responsevalues)) {
    		responses[0] = "B"; responses[1] = "B"; responses[2] = "B"; responses[3] = "B";
    	}
    	if ("C".equals(responsevalues)) {
    		responses[0] = "C"; responses[1] = "C"; responses[2] = "C"; responses[3] = "C";
    	}
    	if ("ABCD".equals(responsevalues)) {
    		responses[0] = "A"; responses[1] = "B"; responses[2] = "C"; responses[3] = "D";
    	}
    	return responses;
    }
    
	
 }