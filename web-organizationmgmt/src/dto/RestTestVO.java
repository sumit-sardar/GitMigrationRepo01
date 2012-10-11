package dto;

import java.util.ArrayList;
import java.util.List;

import com.ctb.util.OperationStatus;

public class RestTestVO {
	List<ScheduleElementVO> deliverableItemSetList = new ArrayList<ScheduleElementVO>();
	List<StudentSessionStatusVO> studentDetailsList = new ArrayList<StudentSessionStatusVO>();
	List<TestSessionVO> testSessionList  = new ArrayList<TestSessionVO>();
	List<StudentProfileInformation> studentList = new ArrayList<StudentProfileInformation>();
	
	Integer selectedTestAdmin = null;
	Integer selectedItemSetId = null;
	OperationStatus status = new OperationStatus();
	

	public void setDeliverableItemSetList(List<ScheduleElementVO> deliverableItemSetList) {
		if(deliverableItemSetList != null)
			this.deliverableItemSetList = deliverableItemSetList;
	}


	public void setStudentDetailsList(List<StudentSessionStatusVO> studentDetailsList) {
		if (studentDetailsList !=null )
			this.studentDetailsList = studentDetailsList;
	}


	public void setSelectedItemSetId(Integer selectedItemSetId) {
		this.selectedItemSetId = selectedItemSetId;
	}


	public void setSelectedTestAdmin(Integer selectedTestAdmin) {
		this.selectedTestAdmin = selectedTestAdmin;
	}


	public OperationStatus getStatus() {
		return status;
	}


	public void setTestSessionList(List<TestSessionVO> testSessionList) {
		this.testSessionList = testSessionList;
	}


	public void setStudentList(List<StudentProfileInformation> studentList) {
		this.studentList = studentList;
	}

}