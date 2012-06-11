package dto;

import java.util.Date;

/**
 * This object contains information for students who will be created in OAS for an administration
 * The values which required from ACUITY through input are: 
 * 				firstName, lastName, gender, grade   
 * The values which OAS platform populated in return are:  
 * 				status, assignmentId, loginName, password
 * 
 * @author Tai_Truong
 */
public class Student implements java.io.Serializable {
    static final long serialVersionUID = 1L;

    private String assignmentId = null;	// publicId
    private Integer id = null;
    private String firstName = null;	// 32 chars
    private String middleName = null;	// 32 chars
    private String lastName = null;		// 32 chars
    private String gender = null;		// 32 chars
    private String grade = null;		// 32 chars
    private Date birthdate = null;
    private String loginName = null;	// 32 chars
    private String password = null;		// 32 chars

    private String status = "OK";
    
	public Student() {
	}

	public String getAssignmentId() {
		return assignmentId;
	}

	public void setAssignmentId(String assignmentId) {
		this.assignmentId = assignmentId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
