package com.ctb.tms.bean.login; 

import java.io.Serializable;
import java.sql.Clob;

public class ManifestData implements Serializable
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int scoOrder;
	private int scoParentId;
	private String adminForceLogout;
    private String showStudentFeedback;
	private int id;
    private String adsid;
	private String title;
    private String testTitle;
	private int scoDurationMinutes;
	private int totalTime;
	private String scoUnitType;
	private int scoUnitQuestionOffset;
	private String scoEntry;
    private String completionStatus;
    private String asmtHash;
    private String asmtEncryptionKey;
    private String itemEncryptionKey;
    private String accessCode;
    private String scratchpadContent;
    private String randomDistractorStatus;
    private int rawScore;
    private int maxScore;
    private int unscored;
    private String forwardOnly;
    private String scorable;
    private long startTime;
    private long endTime;
    private String form;
    private String level;
    private String product;
    private String recommendedLevel;
    private String adaptive;
    private double abilityScore;
    private double semScore;
    private String objectiveScore;
    private String contentURI;
    private int subtestLastMseq = -1;
    private String blockDownload;
    private String isSample;
    
    public ManifestData () {
    	
    }
    
	public String getBlockDownload() {
		return blockDownload;
	}
	public void setBlockDownload(String blockDownload) {
		this.blockDownload = blockDownload;
	}
	public int getSubtestLastMseq() {
		return subtestLastMseq;
	}
	public void setSubtestLastMseq(int subtestLastMseq) {
		this.subtestLastMseq = subtestLastMseq;
	}
	public String getContentURI() {
		return contentURI;
	}
	public void setContentURI(String contentURI) {
		this.contentURI = contentURI;
	}
	public String getRecommendedLevel() {
		return recommendedLevel;
	}
	public void setRecommendedLevel(String recommendedLevel) {
		if(recommendedLevel != null && !"".equals(recommendedLevel.trim())) {
			this.recommendedLevel = recommendedLevel;
		}
	}
	public String getForm() {
		return form;
	}
	public void setForm(String form) {
		this.form = form;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public long getStartTime() {
		return startTime;
	}
	public void setStartTime(long startTime) {
		this.startTime = startTime;
	}
	public long getEndTime() {
		return endTime;
	}
	public void setEndTime(long endTime) {
		this.endTime = endTime;
		if(!"IN".equals(this.completionStatus)) {
			this.completionStatus = "CO";
		}
	}
	
	/**
	 * @return the abilityScore
	 */
	public double getAbilityScore() {
		return abilityScore;
	}
	/**
	 * @param abilityScore the abilityScore to set
	 */
	public void setAbilityScore(double abilityScore) {
		this.abilityScore = abilityScore;
	}
	/**
	 * @return the semScore
	 */
	public double getSemScore() {
		return semScore;
	}
	/**
	 * @param semScore the semScore to set
	 */
	public void setSemScore(double semScore) {
		this.semScore = semScore;
	}
	/**
	 * @return the objectiveScore
	 */
	public String getObjectiveScore() {
		return objectiveScore;
	}
	/**
	 * @param objectiveScore the objectiveScore to set
	 */
	public void setObjectiveScore(String objectiveScore) {
		this.objectiveScore = objectiveScore;
	}
	/**
	 * @return the adaptive
	 */
	public String getAdaptive() {
		return adaptive;
	}
	/**
	 * @param adaptive the adaptive to set
	 */
	public void setAdaptive(String adaptive) {
		this.adaptive = adaptive;
	}
	public String getScorable() {
		return scorable;
	}
	public void setScorable(String scorable) {
		this.scorable = scorable;
	}
	public int getRawScore() {
		return rawScore;
	}
	public void setRawScore(int rawScore) {
		this.rawScore = rawScore;
	}
	public int getMaxScore() {
		return maxScore;
	}
	public void setMaxScore(int maxScore) {
		this.maxScore = maxScore;
	}
	public int getUnscored() {
		return unscored;
	}
	public void setUnscored(int unscored) {
		this.unscored = unscored;
	}
	/**
	 * @return Returns the adsid.
	 */
	public String getAdsid() {
		return adsid;
	}
	/**
	 * @param adsid The adsid to set.
	 */
	public void setAdsid(String adsid) {
		this.adsid = adsid;
	}
    /**
	 * @return Returns the itemEncryptionKey.
	 */
	public String getItemEncryptionKey() {
		return itemEncryptionKey;
	}
	/**
	 * @param itemEncryptionKey The itemEncryptionKey to set.
	 */
	public void setItemEncryptionKey(String itemEncryptionKey) {
		this.itemEncryptionKey = itemEncryptionKey;
	}
    /**
	 * @return Returns the asmtHash.
	 */
	public String getAsmtHash() {
		return asmtHash;
	}
	/**
	 * @param asmtHash The asmtHash to set.
	 */
	public void setAsmtHash(String asmtHash) {
		this.asmtHash = asmtHash;
	}
    /**
	 * @return Returns the asmtEncryptionKey.
	 */
	public String getAsmtEncryptionKey() {
		return asmtEncryptionKey;
	}
	/**
	 * @param asmtEncryptionKey The asmtEncryptionKey to set.
	 */
	public void setAsmtEncryptionKey(String asmtEncryptionKey) {
		this.asmtEncryptionKey = asmtEncryptionKey;
	}
    /**
	 * @return Returns the completionStatus.
	 */
	public String getCompletionStatus() {
		return completionStatus;
	}
	/**
	 * @param completionStatus The completionStatus to set.
	 */
	public void setCompletionStatus(String completionStatus) {
		this.completionStatus = completionStatus;
	}
    /**
	 * @return Returns the showStudentFeedback.
	 */
	public String getShowStudentFeedback() {
		return showStudentFeedback;
	}
	/**
	 * @param showStudentFeedback The showStudentFeedback to set.
	 */
	public void setShowStudentFeedback(String showStudentFeedback) {
		this.showStudentFeedback = showStudentFeedback;
	}
    /**
	 * @return Returns the adminForceLogout.
	 */
	public String getAdminForceLogout() {
		return adminForceLogout;
	}
	/**
	 * @param adminForceLogout The adminForceLogout to set.
	 */
	public void setAdminForceLogout(String adminForceLogout) {
		this.adminForceLogout = adminForceLogout;
	}
	/**
	 * @return Returns the id.
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return Returns the scoDurationMinutes.
	 */
	public int getScoDurationMinutes() {
		return scoDurationMinutes;
	}
	/**
	 * @param scoDurationMinutes The scoDurationMinutes to set.
	 */
	public void setScoDurationMinutes(int scoDurationMinutes) {
		this.scoDurationMinutes = scoDurationMinutes;
	}
	/**
	 * @return Returns the scoEntry.
	 */
	public String getScoEntry() {
		return scoEntry;
	}
	/**
	 * @param scoEntry The scoEntry to set.
	 */
	public void setScoEntry(String scoEntry) {
		this.scoEntry = scoEntry;
	}
	/**
	 * @return Returns the scoOrder.
	 */
	public int getScoOrder() {
		return scoOrder;
	}
	/**
	 * @param scoOrder The scoOrder to set.
	 */
	public void setScoOrder(int scoOrder) {
		this.scoOrder = scoOrder;
	}
	/**
	 * @return Returns the scoParentId.
	 */
	public int getScoParentId() {
		return scoParentId;
	}
	/**
	 * @param scoParentId The scoParentId to set.
	 */
	public void setScoParentId(int scoParentId) {
		this.scoParentId = scoParentId;
	}
	/**
	 * @return Returns the scoUnitQuestionOffset.
	 */
	public int getScoUnitQuestionOffset() {
		return scoUnitQuestionOffset;
	}
	/**
	 * @param scoUnitQuestionOffset The scoUnitQuestionOffset to set.
	 */
	public void setScoUnitQuestionOffset(int scoUnitQuestionOffset) {
		this.scoUnitQuestionOffset = scoUnitQuestionOffset;
	}
	/**
	 * @return Returns the scoUnitType.
	 */
	public String getScoUnitType() {
		return scoUnitType;
	}
	/**
	 * @param scoUnitType The scoUnitType to set.
	 */
	public void setScoUnitType(String scoUnitType) {
		this.scoUnitType = scoUnitType;
	}
	/**
	 * @return Returns the title.
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title The title to set.
	 */
	public void setTitle(String title) {
		this.title = title;
	}
    /**
	 * @return Returns the testTitle.
	 */
	public String getTestTitle() {
		return testTitle;
	}
	/**
	 * @param title The testTitle to set.
	 */
	public void setTestTitle(String testTitle) {
		this.testTitle = testTitle;
	}
	/**
	 * @return Returns the totalTime.
	 */
	public int getTotalTime() {
		return totalTime;
	}
	/**
	 * @param totalTime The totalTime to set.
	 */
	public void setTotalTime(int totalTime) {
		this.totalTime = totalTime;
	}
	/**
	 * @return the accessCode
	 */
	public String getAccessCode() {
		return accessCode;
	}
	/**
	 * @param accessCode the accessCode to set
	 */
	public void setAccessCode(String accessCode) {
		this.accessCode = accessCode;
	}


    public String getScratchpadContent() {
        return scratchpadContent;
    }
    
    public void setScratchpadContent(String scratchpadContent) {
        this.scratchpadContent = scratchpadContent;
    }
    
    //Changes For Random Distractor
    
    /**
	 * 
	 * @return
	 */
	 public String getRandomDistractorStatus() {
		 return randomDistractorStatus;
	 }
	 /**
	  * 
	  * @param randomDistractorStatus
	  */
	 public void setRandomDistractorStatus(String randomDistractorStatus) {
		 this.randomDistractorStatus = randomDistractorStatus;
	 }
	 
		/**
		 * @return the forwardOnly
		 */
		public String getForwardOnly() {
			return forwardOnly;
		}
		/**
		 * @param forwardOnly the forwardOnly to set
		 */
		public void setForwardOnly(String forwardOnly) {
			this.forwardOnly = forwardOnly;
		}

		public String getIsSample() {
			return isSample;
		}

		public void setIsSample(String isSample) {
			this.isSample = isSample;
		}

} 
