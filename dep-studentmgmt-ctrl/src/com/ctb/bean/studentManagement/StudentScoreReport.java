package com.ctb.bean.studentManagement;

import java.util.Date;

import com.ctb.bean.CTBBean;
import com.ctb.bean.testAdmin.StudentReportIrsScore;


/**
 * Data bean representing the values required to display 
 * immediate score report.
 * 
 * @author TCS
 */

public class StudentScoreReport extends CTBBean{
	
	static final long serialVersionUID = 1L;
	
	private String studentFirstName;
	private String studentLastName;
	private String studentName;
	private Integer studentId;
	private String studentExtPin1;
	private Date testAdminStartDate;
	private String form;
	private String district;
	private String school;
	private String grade;
	private String testAdminName;
	private StudentReportIrsScore[] studentReportIrsScore;
	private String contentAreaNameString;
	private String testName;
	
	
	/**
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}
	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	/**
	 * @return the studentId
	 */
	public Integer getStudentId() {
		return studentId;
	}
	/**
	 * @param studentId the studentId to set
	 */
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	/**
	 * @return the studentExtPin1
	 */
	public String getStudentExtPin1() {
		return studentExtPin1;
	}
	/**
	 * @param studentExtPin1 the studentExtPin1 to set
	 */
	public void setStudentExtPin1(String studentExtPin1) {
		this.studentExtPin1 = studentExtPin1;
	}
	/**
	 * @return the testAdminStartDate
	 */
	public Date getTestAdminStartDate() {
		return testAdminStartDate;
	}
	/**
	 * @param testAdminStartDate the testAdminStartDate to set
	 */
	public void setTestAdminStartDate(Date testAdminStartDate) {
		this.testAdminStartDate = testAdminStartDate;
	}
	/**
	 * @return the form
	 */
	public String getForm() {
		return form;
	}
	/**
	 * @param form the form to set
	 */
	public void setForm(String form) {
		this.form = form;
	}
	/**
	 * @return the district
	 */
	public String getDistrict() {
		return district;
	}
	/**
	 * @param district the district to set
	 */
	public void setDistrict(String district) {
		this.district = district;
	}
	/**
	 * @return the school
	 */
	public String getSchool() {
		return school;
	}
	/**
	 * @param school the school to set
	 */
	public void setSchool(String school) {
		this.school = school;
	}
	/**
	 * @return the grade
	 */
	public String getGrade() {
		return grade;
	}
	/**
	 * @param grade the grade to set
	 */
	public void setGrade(String grade) {
		this.grade = grade;
	}
	/**
	 * @return the studentReportIrsScore
	 */
	public StudentReportIrsScore[] getStudentReportIrsScore() {
		return studentReportIrsScore;
	}
	/**
	 * @param studentReportIrsScore the studentReportIrsScore to set
	 */
	public void setStudentReportIrsScore(
			StudentReportIrsScore[] studentReportIrsScore) {
		this.studentReportIrsScore = studentReportIrsScore;
	}
	/**
	 * @return the studentFirstName
	 */
	public String getStudentFirstName() {
		return studentFirstName;
	}
	/**
	 * @param studentFirstName the studentFirstName to set
	 */
	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}
	/**
	 * @return the studentLastName
	 */
	public String getStudentLastName() {
		return studentLastName;
	}
	/**
	 * @param studentLastName the studentLastName to set
	 */
	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}
	/**
	 * @return the testAdminName
	 */
	public String getTestAdminName() {
		return testAdminName;
	}
	/**
	 * @param testAdminName the testAdminName to set
	 */
	public void setTestAdminName(String testAdminName) {
		this.testAdminName = testAdminName;
	}
	/**
	 * @return the contentAreaNameString
	 */
	public String getContentAreaNameString() {
		return contentAreaNameString;
	}
	/**
	 * @param contentAreaNameString the contentAreaNameString to set
	 */
	public void setContentAreaNameString(String contentAreaNameString) {
		this.contentAreaNameString = contentAreaNameString;
	}
	/**
	 * @return the testName
	 */
	public String getTestName() {
		return testName;
	}
	/**
	 * @param testName the testName to set
	 */
	public void setTestName(String testName) {
		this.testName = testName;
	}

}