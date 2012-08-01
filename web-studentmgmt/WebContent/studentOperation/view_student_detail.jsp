<%@ page import="java.io.*, java.util.*"%>
<%
    Boolean isLasLinkCustomer1 = (Boolean) request.getAttribute("isLasLinkCustomer");
	Boolean isStudentIdConfigurable1 = (Boolean)request.getAttribute("isStudentIdConfigurable"); 
	String []studentIdArrValue1 = (String[])request.getAttribute("studentIdArrValue");
	
	

%>
<div>
<input type="hidden" id="isLasLinkCustomer"  value = '<%= isLasLinkCustomer1 %>' />
<input type="hidden" id="isStudentIdConfigurable" value = '<%=isStudentIdConfigurable1 %>' />
</div>

<div id="viewStudentDetail"
	style="display: none; background-color: #D4ECFF; font-family: Arial, Verdana, Sans Serif; font-size: 12px; font-style: normal; font-weight: normal;">
	
	
		<br>
	<div id="viewaccordion" style="width:99.5%;">
			
			<div>
				<h3><a href="#"><lb:label key="stu.label.info"/></a></h3>
				
					<div id="view_Student_Information" style="background-color: #FFFFFF;">
	
						<table class="transparent" style="width:100%">
							<tbody>
								<tr class="transparent">
								<td style ="vertical-align: top; width:50%">
								<table class="transparent" >
								<tbody>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.firstName" suffix=":"/></td>
										<td class="transparent"><label style="width: 200px;" tabindex="0" maxlength="32" id="studentFirstNameView" name="studentFirstNameView">
										</td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.middleName" suffix=":"/></td>
										<td class="transparent"><label style="width: 200px;" maxlength="32" id="studentMiddleNameView" name="studentMiddleNameView"></td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.lastName" suffix=":"/></td>
										<td class="transparent"><label style="width: 200px;" maxlength="32" id="studentLastNameView" name="studentLastNameView"></td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.loginID" suffix=":"/></td>
										<td class="transparent"><label style="width: 200px;" maxlength="32" id="studentUserNameView" name="studentUserNameView"></td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.dateOfBirth" suffix=":"/></td>
										<td nowrap="" class="transparent">    
											<label style="width: 200px;" maxlength="32" id="birthdateStringView" name="birthdateStringView">
										</td>                    
						   
									</tr>
								</tbody>
								</table>
								</td>
								<td style ="vertical-align: top; width:50%">
								<table class="transparent" >
								<tbody>
									
									    <tr class="transparent">
									        <td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.grade" suffix=":"/></td>
											<td class="transparent"><label style="width: 200px;" maxlength="32" id="studentgradeView" name="studentgradeView"></td>
									    </tr>
									    <tr class="transparent">
									    	<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.gender" suffix=":"/></td>
											<td class="transparent"><label style="width: 200px;" maxlength="32" id="studentgenderView" name="studentgenderView"></td>
									    </tr>
									    <tr class="transparent">
									        <td width="110"  class="transparent alignRight">
									        
									         <%if(isStudentIdConfigurable1) {%> 
												 <%=studentIdArrValue1[0] %>	:
											 <%} else {%> 
												<lb:label key="stu.info.studentID" suffix=":"/>		
											 <%} %>
									        <td class="transparent"><label style="width: 200px;" maxlength="32" id="studentNumberView" name="studentNumberView"></td>
									    </tr>
									    
									    <%if(isLasLinkCustomer1) { %>
									    <tr class="transparent">
									    	<td width="110" nowrap="" class="transparent alignRight"><lb:label key="stu.info.purposeTest" suffix=":"/></td>
											<td class="transparent"><label style="width: 200px;" maxlength="32" id="studenttestPurposeView" name="studenttestPurposeView"></td>
									    </tr>
									    <%} %>
									    
									    <tr class="transparent">
									        <td width="110" nowrap="" class="transparent-top alignRight"><lb:label key="stu.info.org" suffix=":"/></td>
									        <td class="transparent-top">
									            <label style="width: 200px;" maxlength="32" id="orgNodeNameView" name="orgNodeNameView">
									        </td>
									    </tr>
									
								</tbody>
								</table>
								</td>
								</tr>
							</tbody>
						</table>


							</div>
				
			</div>
			<div>
				<h3><a href="#"><lb:label key="stu.label.extraInfo" /></a></h3>
				<div id="view_Student_Additional_Information" style="overflow-y: scroll !important; overflow-x: hidden !important;"><!-- changes for defect #66994 -->
					<%@include file="/studentOperation/view_student_by_demographic.jsp"%>			
				</div>
			</div>
			<div>
				<h3><a href="#"><lb:label key="stu.label.specificAccoInfo" /></a></h3>
				<div id="view_Student_Accommodation_Information" style="overflow-y: scroll !important; overflow-x: hidden !important;"><!-- changes for defect #66994 -->
					<%@include file="/studentOperation/view_student_by_accommodation.jsp"%>
				</div>
			</div>
			
			<div>
	<table cellspacing="0" cellpadding="0" border="0" id="TblGrid_list2_2" class="EditTable" width="100%">
		<tbody>
			<br>
			<tr id="Act_Buttons" align="center">
				<td  width="3%" id="viewPreButton" style= "visibility:hidden"><a class="fm-button ui-state-default ui-corner-left" id="viewpData" href="javascript:pDataClick('View');"><span
					class="ui-icon ui-icon-triangle-1-w"></span></a></td><td id="viewNextButton" style= "visibility:hidden"><a class="fm-button ui-state-default ui-corner-right" id="viewnData"
					href="javascript:nDataClick('View');"><span class="ui-icon ui-icon-triangle-1-e"></span></a></td>
					<td>&nbsp;</td>
				<td  width="100%">
					<center>
					<input type="button"  id="cData" value=<lb:label key="common.button.cancel" prefix="'&nbsp;" suffix="&nbsp;'"/> onclick="javascript:closePopUp('viewStudentDetail'); return false;" class="ui-widget-header">
					</center>
					<br>
				</td>
			</tr>
			<tr class="binfo" style="display: none;">
				<td colspan="2" class="bottominfo"></td>
			</tr>
		</tbody>
	</table>
	</div>
		</div>

</div>