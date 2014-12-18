package com.mhe.ctb.oas.BMTSync.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import com.mhe.ctb.oas.BMTSync.model.Student;
import com.mhe.ctb.oas.BMTSync.model.StudentResponse;
import com.mhe.ctb.oas.BMTSync.rest.CreateStudentsRequest;
import com.mhe.ctb.oas.BMTSync.rest.CreateStudentsResponse;
import com.mhe.ctb.oas.BMTSync.spring.dao.SpringStudentDAO;
import com.mhe.ctb.oas.BMTSync.spring.jms.StudentMessageType;


//@Component("consumeService")
//@Controller
public class StudentRestClient {

	private static final Logger logger = Logger.getLogger(StudentRestClient.class);
	
	private SpringStudentDAO studentDAO;
	
	public StudentRestClient(final SpringStudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
	
	String errorMsg;

	/*
	 * Method to consume a students web service
	 */
	@RequestMapping(value="/api/v1/oas/addUpdateStudent", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody CreateStudentsResponse postStudentList(final List<StudentMessageType> messages) {
		System.out.println("Start");		
		final RestTemplate restTemplate = new RestTemplate(); 
		final CreateStudentsRequest studentListRequest = new CreateStudentsRequest();
		CreateStudentsResponse studentListResponse = null;
		
		try {
			for (final StudentMessageType studentMessage : messages) {
				// Connects to OAS DB and return students related data 
				final Student student = studentDAO.getStudent(studentMessage.getStudentId());
				logger.info("Transmitting student. [studentId=" + student.getOasStudentId() + "]");
				studentListRequest.addStudent(student);
			}
	
	        studentListResponse = restTemplate.postForObject(RestURIConstants.SERVER_URI+RestURIConstants.POST_STUDENTS,
	        		studentListRequest, CreateStudentsResponse.class);
			
			processResponses(studentListRequest, studentListResponse, true);			
		} catch (HttpClientErrorException he) {
			System.out.println("HTTP Error:"+he.getMessage());
			logger.error("Http Client Error: " + he.getMessage(), he);			
			try {
				// On Error Mark the Student ID status as Failed
				// in Student_API_Status table
				processResponses(studentListRequest, studentListResponse, false);
			} catch (Exception e) {
				logger.error("Error attempting to process student responses.", e);
			}
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			logger.error("Error attempting to process student responses.", e);
		} 
		return studentListResponse;
	}

	/*
	 * Method to insert/record records in the Student_API_Status
	 * with status 'Failed' for the student ID's that were not 
	 * synched into BMT due to an error in data
	 */
	private void processResponses(final CreateStudentsRequest req, final CreateStudentsResponse resp, final boolean success) throws Exception {

		Map<Integer, Boolean> updateStatuses = new HashMap<Integer, Boolean>(req.getStudents().size());
		Map<Integer, String> updateMessages = new HashMap<Integer, String>(req.getStudents().size());

		logger.debug("Students post total count: " + req.getStudents().size());
		logger.debug("Students post success count: "+resp.getSuccessCount());
		logger.debug("Students post failure count: "+resp.getFailureCount());
		List<StudentResponse> failures = resp.getFailures();
		final StringBuilder failedStudentIds = new StringBuilder();
		failedStudentIds.append("Students failed:");
		if (failures == null) {
			failedStudentIds.append(" none");
		} else {
			for (final StudentResponse failedUpdate : resp.getFailures()) {
				failedStudentIds.append(" ");
				failedStudentIds.append(failedUpdate.getOasCustomerId().toString());				
				updateStatuses.put(failedUpdate.getOasStudentId(), false);
				updateMessages.put(failedUpdate.getOasStudentId(), failedUpdate.getErrorMessage());
			}
		}
		logger.debug(failedStudentIds.toString());

		List<Student> requests = req.getStudents();
		for (final Student student : requests) {
			if (!updateMessages.containsKey(student.getOasStudentId())) {
				updateStatuses.put(student.getOasStudentId(), success);
				updateMessages.put(student.getOasStudentId(), "");
			}
		}

		for (final Integer studentId : updateMessages.keySet()) {
			studentDAO.updateStudentAPIStatus(studentId, updateStatuses.get(studentId), updateMessages.get(studentId));
			logger.debug(String.format("Updating student API status in OAS. [studentId=%d][updateSuccess=%b][updateMessage=%s]",
					studentId, updateStatuses.get(studentId), updateMessages.get(studentId)));
					
		}
	}
	
	
}
