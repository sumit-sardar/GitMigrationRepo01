package com.ctb.tdc.web.to;

public class StudentCredentials {
	private String username;
	private String password;
	private String accesscode;
	private String testRosterId;
	private String tmsUpdate;
	
	public String getTestRosterId() {
		return testRosterId;
	}
	public void setTestRosterId(String testRosterId) {
		this.testRosterId = testRosterId;
	}
	
	public String getTmsUpdate() {
		return tmsUpdate;
	}
	public void setTmsUpdate(String tmsUpdate) {
		this.tmsUpdate = tmsUpdate;
	}
	public String getUsername() {
		return username.toUpperCase();
	}
	public void setUsername(String username) {
		this.username = username.toUpperCase();
	}
	public String getPassword() {
		return password.toUpperCase();
	}
	public void setPassword(String password) {
		this.password = password.toUpperCase();
	}
	public String getAccesscode() {
		return accesscode.toUpperCase();
	}
	public void setAccesscode(String accesscode) {
		this.accesscode = accesscode.toUpperCase();
	}
	
}
