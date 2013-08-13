package dto; 

import java.util.Date;

/**
* Subtest information
* questions is a list of questions in this subtest
*
* @author Tai_Truong
*/
public class SubtestInfo implements java.io.Serializable 
{ 
    static final long serialVersionUID = 1L;
    
    private Integer subtestId = null;
    private String subtestName = null;
    private String subtestLevel = null;
    private Question[] questions = null;
    private Date startDateTime = null;
    private Date completionDateTime = null;
    

	public SubtestInfo() {
    	this.subtestId = null;
    	this.subtestName = null;
    	this.subtestLevel = null;
    	this.questions = null;    
    	this.startDateTime = null;
    	this.completionDateTime = null;	
    }

    public SubtestInfo(Integer subtestId, String subtestName, String subtestLevel, Question[] questions) {
    	this.subtestId = subtestId;
    	this.subtestName = subtestName;
    	this.subtestLevel = subtestLevel;
    	this.questions = questions;
    }
    
	public Integer getSubtestId() {
		return subtestId;
	}

	public void setSubtestId(Integer subtestId) {
		this.subtestId = subtestId;
	}

	public String getSubtestName() {
		return subtestName;
	}

	public void setSubtestName(String subtestName) {
		this.subtestName = subtestName;
	}

	public String getSubtestLevel() {
		return subtestLevel;
	}

	public void setSubtestLevel(String subtestLevel) {
		this.subtestLevel = subtestLevel;
	}

	public Question[] getQuestions() {
		return questions;
	}

	public void setQuestions(Question[] questions) {
		this.questions = questions;
	}
	

	public Date getStartDateTime() {
		return startDateTime;
	}

	public void setStartDateTime(Date startDateTime) {
		this.startDateTime = startDateTime;
	}


	public Date getCompletionDateTime() {
		return completionDateTime;
	}


	public void setCompletionDateTime(Date completionDateTime) {
		this.completionDateTime = completionDateTime;
	}
    
} 
