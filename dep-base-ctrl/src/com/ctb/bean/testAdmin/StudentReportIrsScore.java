package com.ctb.bean.testAdmin;

import com.ctb.bean.CTBBean;

/**
 * Data bean representing the values required to display 
 * immediate scores from irs database.
 * 
 * @author TCS
 */

public class StudentReportIrsScore extends CTBBean{
	
	static final long serialVersionUID = 1L;
	
	private String contentAreaName;
	private Integer rawScore;
	private Integer scaleScore;
	private Integer proficiencyLevel;
	
	
	/**
	 * @return the contentAreaName
	 */
	public String getContentAreaName() {
		return contentAreaName;
	}
	/**
	 * @param contentAreaName the contentAreaName to set
	 */
	public void setContentAreaName(String contentAreaName) {
		this.contentAreaName = contentAreaName;
	}
	/**
	 * @return the rawScore
	 */
	public Integer getRawScore() {
		return rawScore;
	}
	/**
	 * @param rawScore the rawScore to set
	 */
	public void setRawScore(Integer rawScore) {
		this.rawScore = rawScore;
	}
	/**
	 * @return the scaleScore
	 */
	public Integer getScaleScore() {
		return scaleScore;
	}
	/**
	 * @param scaleScore the scaleScore to set
	 */
	public void setScaleScore(Integer scaleScore) {
		this.scaleScore = scaleScore;
	}
	/**
	 * @return the proficiencyLevel
	 */
	public Integer getProficiencyLevel() {
		return proficiencyLevel;
	}
	/**
	 * @param proficiencyLevel the proficiencyLevel to set
	 */
	public void setProficiencyLevel(Integer proficiencyLevel) {
		this.proficiencyLevel = proficiencyLevel;
	}

}
