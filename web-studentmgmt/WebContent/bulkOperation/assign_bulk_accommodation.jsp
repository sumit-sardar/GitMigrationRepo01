<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="label.tld" prefix="lb" %>
<lb:bundle baseName="studentApplicationResource" />

<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<netui-data:declareBundle bundlePath="webResources" name="web" />

<%
    String studentIdLabelName = (String)request.getAttribute("studentIdLabelName");
	Boolean supportAccommodations = (Boolean)request.getAttribute("supportAccommodations");
	
%>

<input type="hidden" id="studentIdLabelName"  value ='Student ID' />
<input type="hidden" id="supportAccommodations" value = '<%=supportAccommodations %>' />
<input type="hidden" id="noStudentTitle" name = "noStudentTitle" value="${bundle.web['student.noStuSelected.title']}"/>
<input type="hidden" id="noStudentMsg" name = "noStudentMsg" value="${bundle.web['student.noStuSelected.message']}"/>
<input type="hidden" id="filterNoStuSelected" name = "filterNoStuSelected" value="${bundle.web['student.filterNoStuSelected.message']}"/>
<input type="hidden" id="accomStuGrid" name="accomStuGrid" value=<lb:label key="stu.label.list" prefix="'" suffix="'"/>/>
<input type="hidden" id="selectAccomPopup" name="selectAccomPopup" value=<lb:label key="stu.label.accomPopup" prefix="'" suffix="'"/>/>
<input type="hidden" id="confirmAlert" name="confirmAlert" value=<lb:label key="stu.label.confirmAlert" prefix="'" suffix="'"/>/>
<input type="hidden" id="jqgLastNameID" name="jqgLastNameID" value=<lb:label key="stu.info.lastName" prefix="'" suffix="'"/>/>
<input type="hidden" id="jqgFirstNameID" name="jqgFirstNameID" value=<lb:label key="stu.info.firstName" prefix="'" suffix="'"/>/>
<input type="hidden" id="jqgMiddleIniID" name="jqgMiddleIniID" value=<lb:label key="stu.label.mi" prefix="'" suffix="'"/>/>
<input type="hidden" id="jqgGradeID" name="jqgGradeID" value=<lb:label key="stu.info.grade" prefix="'" suffix="'"/>/>
<input type="hidden" id="stuAssEditAccoID" name="stuAssEditAccoID" value=<lb:label key="stu.label.editAcco" prefix="'" suffix="'"/>/>
<input type="hidden" id="stuAssNoAccoID" name="stuAssNoAccoID" value=<lb:label key="stu.msg.noAcco" prefix="'" suffix="'"/>/>
	
<table class="transparent" width="97%" style="margin:15px auto;"> 
	<tr class="transparent">
        <td>
		<table class="transparent">
			<tr class="transparent">
				<td>
		    		<h1><lb:label key="stu.stuAccom.title" /></h1>
				</td>
			</tr>
			<tr> 
				<td class="subtitle">  
					<lb:label key="stu.msg.AssignAccomText" />
				</td>	
			</tr>
		</table>
		</td>
	</tr>
	
	<tr class="transparent">
    	<td align="center">        
			<table width="100%">
    			<tr>
					
					<td colspan="3" class="buttonsRow">
						<div id="displayBulkMessageMain" class="errMsgs" style="display:none; width: 50%; float: left;"> 
							<div id= "contentBulkMain"></div>
						</div>
						<div id="viewStatus" style="float:right;visibility:hidden;">
							<a href="#" id="assignAccommButton" onclick="javascript:openAssignAccommPopup(this); return false;" class="rounded {transparent} button"><lb:label key="stu.label.assignAcom" /></a>
						</div>
						<div style="clear:both;"></div>
					</td>					
				</tr>
				<tr class="transparent">
				
			        <td style="vertical-align:top; width:16%;" align="left">
				      	<div  id= "searchheader" class="ui-corner-tl ui-corner-tr ui-widget-header treeCtrlHeader">&nbsp;<lb:label key="stu.label.search" /></div>
				    	<script>populateBulkAccommTree();</script>
				    	<div id="outertreebgdiv" class="treeCtrl" style="height:568px !important">
					    	<div id="studentBulkOrgNode" style="width:auto;height:auto;display:table">
							</div>
						</div> 					
				 	</td>
				 	
	 				<td class="transparent" width="5px">&nbsp;</td>
	 				
		 			<td style="vertical-align:top;" id="jqGrid-content-section" align="left">
	      				<table id="studentAccommGrid" class="gridTable"></table>
						<div id="studentAccommpager" class="gridTable"></div>			
		 			</td>
		 			
	    		</tr>
			</table>
        </td>
    </tr>
</table>

				
<div id="AssignAccommPopup"
	style="width:97%; display: none; border:8px solid #D4ECFF; font-family: Arial, Verdana, Sans Serif; font-size: 12px; font-style: normal; font-weight: normal;">
	<table>
		<tr><td>
			<div id="displayPopupMessage" class="roundedMessage" style="display:none; border:2px solid #D4ECFF;"> 
				<table>
					<tr>
						<td rowspan="3" valign="top">
	                   	<img  id="errorImgPopup"  src="<%=request.getContextPath()%>/resources/images/messaging/icon_error.gif" border="0" width="16" height="16">&nbsp;&nbsp;
						</td>
						<td>
							<table>
								<tr><td><font style="color: red; font-size:12px; font-weight:bold"><div id="titleBulkPopup"></div></font></td></tr>
								<tr><td><font style="font-size: 12px; font-weight: bold;"><div id= "contentBulkPopup">	</div></font></td></tr>
								<tr><td><div id= "messageBulkPopup">	</div></td></tr>
							</table>
						</td>
					</tr>
				</table>
		</div>
		</td></tr>
		<tr>
			<td colspan="2">
			<br/>
				<jsp:include page="/bulkOperation/bulkAccommodationSelection.jsp" />
			<br/>
			</td>
		</tr>
		<tr>
		<td >
				<center>
					<input type="button"  value=<lb:label key="common.button.reset" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:resetAccommpopup(); return false;" class="ui-widget-header">&nbsp;
					<input type="button"  value=<lb:label key="common.button.submit" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:saveBulkStudentData(); return false;" class="ui-widget-header">&nbsp;
					<input type="button"  value=<lb:label key="common.button.cancel" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:cancelAssignAccom(); return false;" class="ui-widget-header">
				</center>
			<br>
		</td>
		
		</tr>
		
	</table>
</div>

<div id="unSaveConfirmationPopup"
	style="display: none; background-color: #D4ECFF; font-family: Arial, Verdana, Sans Serif; font-size: 12px; font-style: normal; font-weight: normal;">
	<table>
		<tr>
			<td colspan="2">
			<br/>
			<p><lb:label key="stu.msg.assignAccomConfirm" /></p>
			<br/>
			</td>
		</tr>
		<tr>
		<td >
				<center>
					<input type="button"  value=<lb:label key="common.button.ok" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:closeUnsaveConfirmationPopup(); return false;" class="ui-widget-header">&nbsp;
					<input type="button"  value=<lb:label key="common.button.cancel" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:closePopUp('unSaveConfirmationPopup'); return false;" class="ui-widget-header">
				</center>
			<br>
		</td>
		
		</tr>
		
	</table>
</div>