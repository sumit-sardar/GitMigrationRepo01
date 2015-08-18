package com.mhe.ctb.oas.BMTSync.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.jms.JMSException;

import org.apache.log4j.Logger;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.mhe.ctb.oas.BMTSync.model.ItemResponse;
import com.mhe.ctb.oas.BMTSync.model.TestStatus;
import com.mhe.ctb.oas.BMTSync.rest.CreateItemResponsesRequest;
import com.mhe.ctb.oas.BMTSync.rest.CreateItemResponsesResponse;
import com.mhe.ctb.oas.BMTSync.rest.CreateTestStatusRequest;
import com.mhe.ctb.oas.BMTSync.rest.CreateTestStatusResponse;
import com.mhe.ctb.oas.BMTSync.rest.SuccessFailCounter;
import com.mhe.ctb.oas.BMTSync.spring.dao.ItemResponseDAO;
import com.mhe.ctb.oas.BMTSync.spring.dao.TestStatusDAO;
import com.mhe.ctb.oas.BMTSync.spring.jms.ScoringQueue;


@RestController
public class TestStatusRestService {
	/** The logger. */
	static private Logger logger = Logger.getLogger(TestStatusRestService.class);
	
	/** Max number of retry attempts for sending to scoring queue. */
	private static final int SCORING_RETRY_MAX_COUNT = 3;
	
	/** Base duration of retry delay for scoring queue. */
	private static final int SCORING_RETRY_DELAY = 5000; // 5 seconds for the scoring queue to reset.
	
	/** The test status DAO. */
	private TestStatusDAO testStatusDAO;
	
	/** The item response DAO. */
	private ItemResponseDAO itemResponseDAO;
	
	/** The endpoint selector (technically a DAO but loaded once at runtime). */
	private EndpointSelector endpointSelector;
	
	/** The scoring queue. */
	private ScoringQueue scoringQueue;
	
	/** Rest Template. New by default, can be overridden for testing. */
	private RestTemplate restTemplate;
	
	/** An error message */
	String errorMsg;	
	
	/**
	 * Public empty constructor to stop Spring from complaining.
	 */
	public TestStatusRestService() {
		
	}
	
	/**
	 * Actual constructor, takes a test status DAO so it can be tested.
	 * @param testStatusDAO
	 */
	public TestStatusRestService(final TestStatusDAO testStatusDAO, final ItemResponseDAO itemResponseDAO,
			final EndpointSelector endpointSelector, final ScoringQueue scoringQueue) {
		this.testStatusDAO = testStatusDAO;
		this.endpointSelector = endpointSelector;
		this.itemResponseDAO = itemResponseDAO;
		this.scoringQueue = scoringQueue;
		this.restTemplate = new RestTemplate();
	}	
	
	/**
	 * Start a REST servlet to respond to test status updates from BMT.
	 * @param request the request from BMT.
	 * @return the response body for the update.
	 */
	@RequestMapping(value="/api/v1/oas/teststatus", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody CreateTestStatusResponse postTestStatus(
		@RequestBody CreateTestStatusRequest request ) {
		
		logger.info("[TestStatus] Request From BMT: "+request.toJson());
		CreateTestStatusResponse response = new CreateTestStatusResponse();
		response.setSuccessful(false);
		
		// Setup the success/failure counters
		SuccessFailCounter counter = new SuccessFailCounter(request.getTestStatus().size());
		
		if (CollectionUtils.isEmpty(request.getTestStatus())) {
			response.setFailures(request.getTestStatus());
			response.setSuccessful(false);
			response.setErrorCode("101");
			response.setErrorMessage("Invalid request JSON");
			return response;
		}
		
		List<TestStatus> testStatusErrList = new ArrayList<TestStatus>();
		
		try {
			for (TestStatus testStatus : request.getTestStatus()) {
				boolean storeStatusUpdate = true;
				List<ItemResponse> itemResponses = null;
				// If the test status is CO or IN, and this is a LasLinks customer ID, load the customer data.
				final Integer customerId = testStatus.getValidatedCustomerId();
				if (customerId == null || ! endpointSelector.getFetchResponses(customerId)) {
					logger.info("[ItemResponses] Customer ID doesn't need responses; skipping.");
				} else {
					// If the customer ID says to get the endpoint and we're in the right status, do the thing.
					if (testStatus.getDeliveryStatus().equals("CO") || testStatus.getDeliveryStatus().equals("IN")) {
						try {
							itemResponses = getItemResponsesFromBMT(customerId, testStatus);
						} catch (RestClientException rce) {
							// If something goes wrong with the REST call, log the error.
							logger.error("[ItemResponses] Http Client Error: " + rce.getMessage(), rce);
							storeStatusUpdate = false;
							testStatus.setErrorCode(412);
							testStatus.setErrorMessage("[ItemResponses] Unable to get item responses: " + rce.getMessage()
									+ " [assignmentId=" + testStatus.getAssignmentId() + "]");
						} catch (final Exception e) {
							// If something unexpected goes wrong, log it.
							logger.error("[ItemResponses] Error in TestStatusRestService class : "+e.getMessage(), e);
							storeStatusUpdate = false;
							testStatus.setErrorCode(500);
							testStatus.setErrorMessage("[ItemResponses] Error in TestStatusRestService class : "+e.getMessage()
									+ " [assignmentId=" + testStatus.getAssignmentId() + "]");
						}
			        	try {
			        		processResponses(testStatus, itemResponses);
			        	} catch (final SQLException sqle) {
				        	logger.error("[ItemResponses] Error storing responses in database: " + sqle.getMessage(), sqle);
							storeStatusUpdate = false;
							testStatus.setErrorCode(500);
							testStatus.setErrorMessage("Error storing responses in database: " + sqle.getMessage());	
			        	} catch (final RestClientException rce) {
				        	logger.error("[ItemResponses] Error with data from BMT: " + rce.getMessage(), rce);
							storeStatusUpdate = false;
							testStatus.setErrorCode(500);
							testStatus.setErrorMessage("Error with data from BMT: " + rce.getMessage());	
			        	}
					} else {
						logger.info("[ItemResponses] Customer ID from BMT and status don't require responses. [customerId="
								+ customerId + ",testStatus=" + testStatus.getDeliveryStatus() + "]");
					}
				}
				
				// If the error code is set at this point, clone the object for return. Otherwise, save the data and build a new response object.
				TestStatus testStatusRet;
				if (! storeStatusUpdate) {
					testStatusRet = new TestStatus();
					testStatusRet.setAssignmentId(testStatus.getAssignmentId());
					testStatusRet.setCompletedDate(testStatus.getCompletedDate());
					testStatusRet.setDeliveryStatus(testStatus.getDeliveryStatus());
					testStatusRet.setErrorCode(testStatus.getErrorCode());
					testStatusRet.setErrorMessage(testStatus.getErrorMessage());
					testStatusRet.setOasCustomerId(testStatus.getOasCustomerId());
					testStatusRet.setOasRosterId(testStatus.getOasRosterId());
					testStatusRet.setOasTestId(testStatus.getOasTestId());
					testStatusRet.setStartedDate(testStatus.getStartedDate());
				} else {
					testStatusRet = testStatusDAO.validateSaveData(testStatus.getOasRosterId(), 
							testStatus.getOasTestId(), 
							testStatus.getDeliveryStatus(), 
							testStatus.getStartedDate(), 
							testStatus.getCompletedDate());
					if (testStatus.getDeliveryStatus().equals("CO")) {
		        		int retryCount = 1;
		        		boolean sendSuccessful = false;
		        		// BMTOAS-1557 Must retry three times to send scoring messaage.				        					        		
		        		while (! sendSuccessful && retryCount <= SCORING_RETRY_MAX_COUNT) {
			            	try {
				        		Thread.sleep(SCORING_RETRY_DELAY * retryCount);
				        	} catch (final InterruptedException ie) {
				        		logger.error("[ItemResponses] Thread interrupted waiting for scoring retry.", ie);
				        	}
		        			try {
				        		logger.info("[ItemResponses] Sending testRosterId to scoring queue: [testRosterId="
				        				+ testStatus.getOasRosterId() + "]");
				        		scoringQueue.send(testStatus.getOasRosterId());
		        				sendSuccessful = true;
		        			} catch (final JMSException jmse) {
					        	logger.error("[ItemResponses] Error sending roster ID to scoring queue: " + jmse.getMessage(), jmse);
					        	retryCount++;
		        			}
		        		}
		        		if (sendSuccessful) {
		        			logger.info("[ItemResponses] Roster ID sent to scoring queue. [testRosterId=" + testStatus.getOasRosterId() + "]");
		        		} else {
		        			logger.error("[ItemResponses] Roster ID could not be sent to scoring queue. [testRosterId=" + testStatus.getOasRosterId() + "]");
							storeStatusUpdate = false;
							testStatus.setErrorCode(500);
							testStatus.setErrorMessage("Roster ID could not be sent to scoring queue. [testRosterId=" + testStatus.getOasRosterId() + "]");	

		        		}
					}
				}
				
				// If Failure add failure to response
				if (testStatusRet.getErrorCode() > 0) { 
					testStatusErrList.add(testStatusRet);
					counter.failure();
			    } else {
			    	counter.successful();
			    }
			}
			
			// Setup the success message including counts
			response.setSuccessCount(counter.getSuccessCount());
			response.setFailureCount(counter.getFailureCount());
			response.setFailures(testStatusErrList);
			
			logger.info("[TestStatus] Response to BMT: "+response.toJson());
		} catch (Exception e) {
			// Generic logger message.
			logger.info(e.getMessage());
		}
		
		return response;
	}

	private void processResponses(TestStatus testStatus, List<ItemResponse> itemResponses) throws RestClientException, SQLException {
		// Calling function has validated that testStatus and itemResponses are not null.
		
		final Integer testRosterId = testStatus.getOasRosterId();
		final String subTestId = testStatus.getOasTestId();

		itemResponseDAO.addItemResponses(testRosterId, subTestId, itemResponses);
	}
	
	private List<ItemResponse> getItemResponsesFromBMT(final int customerId, final TestStatus testStatus) {
		logger.info("[ItemResponses] Customer ID from BMT requires requests and status is final; fetching responses. [customerId="
				+ customerId + ",testStatus=" + testStatus.getDeliveryStatus() + "]");
		final String endpoint = endpointSelector.getEndpoint(customerId);
		CreateItemResponsesRequest itemResponsesRequest = new CreateItemResponsesRequest();
		itemResponsesRequest.setAssignmentId(testStatus.getAssignmentId());
		final String bmtResponseUrl = endpoint + RestURIConstants.POST_RESPONSES + "/" + testStatus.getAssignmentId();
		logger.info("[ItemResponses] Calling BMT URL " + bmtResponseUrl);

		// Send the assignmentId to BMT for a list of itemResponses.
		CreateItemResponsesResponse itemResponses = restTemplate.getForObject(bmtResponseUrl, CreateItemResponsesResponse.class);
        logger.info("[ItemResponses] Response from BMT: " + itemResponses == null ? "null" : itemResponses.toJson());

	    return itemResponses.getItemResponses();    
	}
}
