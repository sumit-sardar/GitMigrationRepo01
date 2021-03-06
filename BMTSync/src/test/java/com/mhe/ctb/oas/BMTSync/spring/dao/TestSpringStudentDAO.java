package com.mhe.ctb.oas.BMTSync.spring.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.sql.SQLException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mhe.ctb.oas.BMTSync.exception.UnknownStudentException;
import com.mhe.ctb.oas.BMTSync.model.Student;
import com.mhe.ctb.oas.BMTSync.model.Student.Accommodations;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:com/mhe/ctb/oas/BMTSync/dao/spring-jdbc-qa.xml")
public class TestSpringStudentDAO {

	@Autowired
	private StudentDAO _studentDao;
	
	//These tests assume the existence of a database and are rightfully integration tests.
	
	private static final int STUDENT_ID = 413595;

	@Test
	public void testStudentDAO_Integ_getStudent_success() throws SQLException {
		Student student = null;
		try {
			student = _studentDao.getStudent(STUDENT_ID);
			assertEquals("Student ID should match", Integer.valueOf(STUDENT_ID), student.getOasStudentId());
		} catch (UnknownStudentException use) {
			fail();
		}
		
		assertNotNull(student);
		Accommodations accommodations = student.getAccomodations();
		assertNotNull(accommodations);
	}
	
	@Test(expected = UnknownStudentException.class)
	public void testStudentDAO_Integ_getStudent_failUnknownStudentException() throws SQLException, UnknownStudentException {
		_studentDao.getStudent(-1);
	}
	
	
	@Test
	public void testStudentDAO_Integ_updateStudentAPIStatus_success() throws SQLException {
		_studentDao.updateStudentAPIStatus(STUDENT_ID, true, "", "Testing query.");
	}
}
