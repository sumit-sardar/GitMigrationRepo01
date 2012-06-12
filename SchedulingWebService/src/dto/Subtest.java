package dto;

/**
 * This object contains information for sub-tests which describes a test structure.   
 * The values which required from ACUITY through input are: 
 * 				subtestId, subtestName   
 * The values which OAS platform populated in return are:  
 * 				accessCode
 * 
 * @author Tai_Truong
 */
public class Subtest implements java.io.Serializable {
    static final long serialVersionUID = 1L;

    private Integer subtestId = null;			// publicId - null for creating new subtest - not null for update.
    private String subtestName = null;			// 512 chars
    private String accessCode = null;			// 32 chars
    private Integer order = null; 	
    private Integer duration = null;

	public Subtest() {
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

	public String getAccessCode() {
		return accessCode;
	}

	public void setAccessCode(String accessCode) {
		this.accessCode = accessCode;
	}

	public Integer getOrder() {
		return order;
	}

	public void setOrder(Integer order) {
		this.order = order;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}
    
	
}
