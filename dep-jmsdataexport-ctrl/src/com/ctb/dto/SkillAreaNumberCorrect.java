package com.ctb.dto;

import com.ctb.utils.EmetricUtil;




public class SkillAreaNumberCorrect 
{

	private String speaking= "";
	private String listening= "";
	private String reading= "";
	private String writing= "";
	private String unused= "";
		

	public String getSpeaking() {
		return speaking;
	}

	public void setSpeaking(String speaking) {
		this.speaking = speaking;
	}

	public String getListening() {
		return listening;
	}

	public void setListening(String listening) {
		this.listening = listening;
	}

	public String getReading() {
		return reading;
	}

	public void setReading(String reading) {
		this.reading = reading;
	}

	public String getWriting() {
		return writing;
	}

	public void setWriting(String writing) {
		this.writing = writing;
	}

	public String getUnused() {
		return unused;
	}

	public void setUnused(String unused) {
		this.unused = unused;
	}
	public String toString(){
		String val="";
		val += EmetricUtil.getFormatedString(speaking, 3)
		+EmetricUtil.getFormatedString(listening, 3) 
		+EmetricUtil.getFormatedString(reading, 3) 
		+EmetricUtil.getFormatedString(writing, 3) 
		+EmetricUtil.getFormatedString(unused, 9);
	

		return val;
		
	}
}


