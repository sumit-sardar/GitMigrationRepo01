package dto; 

/**
* Student response from vendor
* Vendor needs to populate student responses
*
* @author Tai_Truong
*/
public class StudentResponse implements java.io.Serializable 
{ 
    static final long serialVersionUID = 1L;
    
    private Integer testId;
    private Assignment assignment;
    
    public StudentResponse() {}

    public StudentResponse(Integer testId, Assignment assignment) {
    	this.testId = testId;
    	this.assignment = assignment;
    }
    
	public Integer getTestId() {
		return testId;
	}

	public void setTestId(Integer testId) {
		this.testId = testId;
	}

	public Assignment getAssignment() {
		return assignment;
	}

	public void setAssignment(Assignment assignment) {
		this.assignment = assignment;
	}

    
    
} 
