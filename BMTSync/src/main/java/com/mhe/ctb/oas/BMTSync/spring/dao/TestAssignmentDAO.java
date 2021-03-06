package com.mhe.ctb.oas.BMTSync.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import oracle.jdbc.OracleTypes;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.mhe.ctb.oas.BMTSync.exception.UnknownTestAssignmentException;
import com.mhe.ctb.oas.BMTSync.model.DeliveryWindow;
import com.mhe.ctb.oas.BMTSync.model.EnforceTimeLimit;
import com.mhe.ctb.oas.BMTSync.model.Parameters;
import com.mhe.ctb.oas.BMTSync.model.StudentRoster;
import com.mhe.ctb.oas.BMTSync.model.TestAssignment;
import com.mhe.ctb.oas.BMTSync.model.TestDelivery;

/**
 * DAO for loading test roster data from the database.
 * @author kristy_tracer
 */
@Repository
public class TestAssignmentDAO {
	private static final Logger logger = Logger.getLogger(TestAssignmentDAO.class);
	
	// Return map names
	private static final String OUTPUT_ASSIGNMENT = "PRESULTCURSOR";
	
	// The data source
	private final DataSource _dataSource;

	// The JDBC template
	private final JdbcTemplate _jdbcTemplate;

	// Update status in BMTSYNC_ASSIGNMENT_STATUS
	private SimpleJdbcCall _updateAssignmentAPIStatusCall;

	/**
	 * Constructor
	 * @param ds
	 */
	public TestAssignmentDAO(final DataSource ds) {
		_dataSource = ds;
		_jdbcTemplate = new JdbcTemplate(_dataSource);

		_updateAssignmentAPIStatusCall = new SimpleJdbcCall(_jdbcTemplate)
		.withCatalogName("PKG_BMTSYNC_ASSIGNMENT")
		.withProcedureName("updateAssignmentAPIStatus")
		.useInParameterNames("pTestAdminID", "pStudentID", "pAppName", "pExportStatus",	"pErrorCode", "pErrorMessage")
		.declareParameters(
				new SqlParameter("pTestAdminID", Types.INTEGER),
				new SqlParameter("pStudentID", Types.VARCHAR),
				new SqlParameter("pAppName", Types.VARCHAR),
				new SqlParameter("pExportStatus", Types.VARCHAR),
				new SqlParameter("pErrorCode", Types.VARCHAR),
				new SqlParameter("pErrorMessage", Types.VARCHAR));
		_updateAssignmentAPIStatusCall.compile();		
	}
	
	/**
	 * Get test assignment data from the database base on test admin ID and student ID.
	 * @param testAdminId Test admin ID
	 * @param studentId Student ID
	 * @return TestAssignment object
	 * @throws UnknownTestAssignmentException If there is no roster matching these records.
	 */
	public TestAssignment getTestAssignment(long testAdminId, long studentId) throws UnknownTestAssignmentException {
		final SimpleJdbcCall _getTestAssignmentCall = new SimpleJdbcCall(_jdbcTemplate)
				.withCatalogName("PKG_BMTSYNC_ASSIGNMENT")
				.withProcedureName("getTestAssignment")
				.useInParameterNames("pTestAdminId", "pStudentId", "pResultCursor")
				.declareParameters(
						new SqlParameter("pTestAdminId", Types.BIGINT),
						new SqlParameter("pStudentID", Types.BIGINT),
						new SqlOutParameter(OUTPUT_ASSIGNMENT, OracleTypes.CURSOR,
								new TestAssignmentRowMapper()));
		_getTestAssignmentCall.compile();
		
		// call the sproc
		final Calendar startDBTime = Calendar.getInstance();
		Map<String, Object> result = _getTestAssignmentCall.execute(testAdminId, studentId);
		final Calendar endDBTime = Calendar.getInstance();
		final long callDBTime = endDBTime.getTimeInMillis() - startDBTime.getTimeInMillis();
        logger.info("SyncCallTime " + callDBTime + " SyncCallType StoredProcedure SyncCallDest PKG_BMTSYNC_ASSIGNMENT.getTestAssignment");
        
        //BMTOAS-2042 - logging for CloudWatch
        logger.info("{\"Name\":\"CloudWatchLog\""
        		+",\"Application\":\"BMTSyncClient\""
        		+",\"IsError\":false,\"ErrorCode\":0"
        		+",\"CallType\":\"StoredProcedure\""
        		+",\"CallDest\":\"PKG_BMTSYNC_ASSIGNMENT.getTestAssignment\""
        		+",\"APICallDuration\":"+callDBTime+"}");

		// See if we got a response
		if (result == null || !result.containsKey(OUTPUT_ASSIGNMENT)) {
			throw new UnknownTestAssignmentException(testAdminId, studentId);
		}

		// Get the response
		@SuppressWarnings("unchecked")
		Collection<TestAssignment> returnList = (Collection<TestAssignment>) result.get(OUTPUT_ASSIGNMENT);
		
		// Check if the list has a student (we will ignore the multiple)
		if (returnList.size() == 0) {
			throw new UnknownTestAssignmentException(testAdminId, studentId);
		}

		return returnList.iterator().next();
	}

	/**
	 * Maps a response from the test_roster row.
	 * 
	 * @author cparis
	 */
	private class TestAssignmentRowMapper implements RowMapper<TestAssignment> {
		TestAssignment testAssignment = new TestAssignment();
		DeliveryWindow deliveryWindow = new  DeliveryWindow();
		Parameters parameters = new  Parameters();

	    List<TestDelivery> testDeliveryList = new ArrayList<TestDelivery>();
	    StudentRoster studentRoster = new StudentRoster();
        List<StudentRoster> studentRosterList = new ArrayList<StudentRoster>();
        
		public TestAssignment mapRow(ResultSet rs, int rowNum) throws SQLException {

    		TestDelivery testDelivery  = new TestDelivery();
    		EnforceTimeLimit enforceTimeLimit = new EnforceTimeLimit();
    		
    		if (rowNum == 0) {
	    		testAssignment.setOasTestAdministrationID(rs.getInt("oasTestAdministrationID"));
	    		testAssignment.setOasCustomerId(rs.getInt("oasCustomerId"));
	    		testAssignment.setOasTestCatalogId(rs.getInt("oasTestCatalogId"));
	    		testAssignment.setName(rs.getString("name"));
	    		testAssignment.setProductName(rs.getString("productName"));
	    		
	    		deliveryWindow.setStartDate(rs.getString("startDate"));
	    		deliveryWindow.setStartHour(rs.getString("startHour"));
	    		deliveryWindow.setEndDate(rs.getString("endDate"));
	    		deliveryWindow.setEndHour(rs.getString("endHour"));
	    		testAssignment.setDeliveryWindow(deliveryWindow);
	    		
	    		parameters.setEnforceBreak(rs.getString("enforceBreak"));
	    		parameters.setEnforceTutorial(rs.getString("enForceTutorial"));
	    		testAssignment.setParameters(parameters);
	    		
	    		studentRoster.setOasRosterId(Integer.valueOf(rs.getInt("oasRosterId")).toString());
	    		studentRoster.setOasStudentid(Integer.valueOf(rs.getInt("oasStudentid")).toString());
	    		studentRoster.setStudentpassword(rs.getString("password"));
	    		studentRosterList.add(studentRoster);
    		}
    		
	    	testDelivery.setOasItemSetId(Integer.valueOf(rs.getInt("ITEM_SET_ID")).toString());
	    	testDelivery.setDeliverystatus(rs.getString("Delivery_Status"));
	    	testDelivery.setAccessCode(rs.getString("Access_Code"));
	    	testDelivery.setOasTestId(rs.getString("OasTestId"));
	    	testDelivery.setOasSubTestName(rs.getString("oasSubTestName"));
	    	enforceTimeLimit.setIsRequired(rs.getString("Enforce_Time_Limit"));
	    	enforceTimeLimit.setTimeLimitInMins(Integer.valueOf(rs.getInt("TimeLimitInMins")).toString());
	    	testDelivery.setEnforceTimeLimit(enforceTimeLimit);
	    	testDelivery.setOrder(rs.getInt("Item_Order"));
	    	
	    	testDeliveryList.add(testDelivery);

			studentRoster.setTestDelivery(testDeliveryList);
			
	        testAssignment.setRoster(studentRosterList);
			return testAssignment;		
		}

	}
	
	/**
	 * Update BMTSYNC_ASSIGNMENT_STATUS based on the results from BMT.
	 * @param testAdminId Test admin ID
	 * @param studentId Student ID
	 * @param success Whether the call to BMT was successful.
	 * @param errorCode Error code if applicable
	 * @param errorMessage Error message if applicable.
	 * @throws SQLException If something goes wrong.
	 */
	public void updateAssignmentAPIStatus(final Integer testAdminId, Integer studentId,
			final boolean success, final String errorCode, final String errorMessage)
			throws SQLException {

		logger.debug(String.format("DB CALL: [testAdminID=%d][studentId=%d][updateSuccess=%b][updateStatus=%s][updateMessage=%s]",
				testAdminId,
				studentId,
				Boolean.valueOf(success),
				errorCode,
				errorMessage));	
		final Calendar startDBTime = Calendar.getInstance();
		_updateAssignmentAPIStatusCall.execute(
				testAdminId,
				studentId.toString(),
				"BMT", 
				success ? "Success" : "Failed",
				success ? "" : errorCode,
				success ? "" : errorMessage);
		final Calendar endDBTime = Calendar.getInstance();
		final long callDBTime = endDBTime.getTimeInMillis() - startDBTime.getTimeInMillis();
        logger.info("SyncCallTime " + callDBTime + " SyncCallType StoredProcedure SyncCallDest PKG_BMTSYNC_ASSIGNMENT.updateAssignmentAPIStatus");
        
        //BMTOAS-2042 - logging for CloudWatch
        logger.info("{\"Name\":\"CloudWatchLog\""
        		+",\"Application\":\"BMTSyncClient\""
        		+",\"IsError\":false,\"ErrorCode\":0"
        		+",\"CallType\":\"StoredProcedure\""
        		+",\"CallDest\":\"PKG_BMTSYNC_ASSIGNMENT.updateAssignmentAPIStatus\""
        		+",\"APICallDuration\":"+callDBTime+"}");
	}
	
}
