package com.mhe.ctb.oas.BMTSync.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class TestDelivery {

	private String deliverystatus;
	private String accessCode;
	private Integer oasItemSetId; 
	private String oasTestId;
	private String oasSubTestName;
	private String isRequired;   // Time_Limit required
	private Integer TimeLimitInMins;
	private Integer order;

	
	public String getDeliverystatus() {
		return deliverystatus;
	}
	@JsonProperty(value="deliverystatus", required=true)
	public void setDeliverystatus(String deliverystatus) {
		this.deliverystatus = deliverystatus;
	}
	
	
	public String getAccessCode() {
		return accessCode;
	}
	@JsonProperty(value="accessCode", required=true)
	public void setAccessCode(String accessCode) {
		this.accessCode = accessCode;
	}
	
	
	public Integer getOasItemSetId() {
		return oasItemSetId;
	}
	@JsonProperty(value="oasItemSetId", required=true)
	public void setOasItemSetId(Integer oasItemSetId) {
		this.oasItemSetId = oasItemSetId;
	}
	
	
	public String getOasTestId() {
		return oasTestId;
	}
	@JsonProperty(value="oasTestId", required=true)
	public void setOasTestId(String oasTestId) {
		this.oasTestId = oasTestId;
	}
	
	
	public String getOasSubTestName() {
		return oasSubTestName;
	}
	@JsonProperty(value="oasSubTestName", required=true)
	public void setOasSubTestName(String oasSubTestName) {
		this.oasSubTestName = oasSubTestName;
	}
	
	
	public String getIsRequired() {
		return isRequired;
	}
	@JsonProperty(value="isRequired", required=true)
	public void setIsRequired(String isRequired) {
		this.isRequired = isRequired;
	}
	
	
	public Integer getTimeLimitInMins() {
		return TimeLimitInMins;
	}
	@JsonProperty(value="timeLimitInMins", required=true)
	public void setTimeLimitInMins(Integer timeLimitInMins) {
		TimeLimitInMins = timeLimitInMins;
	}
	
	
	public Integer getOrder() {
		return order;
	}
	@JsonProperty(value="order", required=true)
	public void setOrder(Integer order) {
		this.order = order;
	}
	
}