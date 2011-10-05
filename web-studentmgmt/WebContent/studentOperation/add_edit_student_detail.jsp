<%@ page import="java.io.*, java.util.*"%>
<%
    Boolean isMandatoryBirthDate = (Boolean)request.getAttribute("isMandatoryBirthDate"); //GACRCT2010CR007 - Disable Mandatory Birth Date 
	Boolean isLasLinkCustomer = (Boolean) request.getAttribute("isLasLinkCustomer");
	Boolean isStudentIdConfigurable = (Boolean)request.getAttribute("isStudentIdConfigurable"); 
	Boolean isStudentId2Configurable = (Boolean)request.getAttribute("isStudentId2Configurable"); 
	String []studentIdArrValue = (String[])request.getAttribute("studentIdArrValue");
	String []studentId2ArrValue = (String[])request.getAttribute("studentId2ArrValue");
	boolean isMandatoryStudentId = false;
	if(studentIdArrValue != null && studentIdArrValue[2] != null && studentIdArrValue[2]!= "") {
		if (studentIdArrValue[2].equalsIgnoreCase("T")) {
			isMandatoryStudentId = true;
		}
	}
	Boolean supportAccommodations = (Boolean)request.getAttribute("supportAccommodations");
	

%>
<input type="hidden" id="isLasLinkCustomer"  value = '<%=isLasLinkCustomer %>' />
<input type="hidden" id="isMandatoryBirthDate"  value = '<%=isMandatoryBirthDate %>' />
<input type="hidden" id="isMandatoryStudentId" value = '<%=isMandatoryStudentId %>' />
<input type="hidden" id="isStudentIdConfigurable" value = '<%=isStudentIdConfigurable %>' />
<input type="hidden" id="isStudentId2Configurable" value = '<%=isStudentId2Configurable %>' />
<input type="hidden" id="studentIdLabelName"  value ='<%=studentIdArrValue[0] %>' />
<input type="hidden" id="isStudentIdNumeric" value = '<%=studentIdArrValue[4] %>' />
<input type="hidden" id="studentIdMinLength" value = '<%=studentIdArrValue[3] %>' />
<input type="hidden" id="studentId2LabelName"  value = '<%=studentId2ArrValue[0] %>' />
<input type="hidden" id="isStudentId2Numeric" value = '<%=studentId2ArrValue[3] %>' />
<input type="hidden" id="studentId2MinLength" value = '<%=studentId2ArrValue[2] %>' />
<input type="hidden" id="supportAccommodations" value = '<%=supportAccommodations %>' />



<div id="addEditStudentDetail"
	style="display: none; background-color: #D4ECFF; font-family: Arial, Verdana, Sans Serif; font-size: 12px; font-style: normal; font-weight: normal;">
	
	<div id="displayMessage" style="display:none; width:100%; height:55px; background-color: #FFFFEE; font-family: Arial, Verdana, Sans Serif; font-size: 12px; font-style: normal; font-weight: bold;">
			<table>
				<tr>
					<td rowspan="3"><div id= "messageType">	</div></td>
					<td>
						<table>
							<tr><td><div id="title"></div></td></tr>
							<tr><td><div id= "content">	</div></td></tr>
							<tr><td><div id= "message">	</div></td></tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	<div id="accordion" style="width:99.5%;">
			
			<div>
				<h3><a href="#">Student Information</a></h3>
				
					<div id="Student_Information" style="background-color: #FFFFFF;">
	
						<table class="transparent">
							<tbody>
								<tr class="transparent">
								<td style ="vertical-align: top;">
								<table class="transparent">
								<tbody>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><span class="asterisk">*</span>&nbsp;First Name:</td>
										<td class="transparent"><input type="text" style="width: 200px;" tabindex="0" maxlength="32" id="studentFirstName" name="studentFirstName">
										</td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight">Middle Name:</td>
										<td class="transparent"><input type="text" style="width: 200px;" maxlength="32" id="studentMiddleName" name="studentMiddleName"></td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><span class="asterisk">*</span>&nbsp;Last Name:</td>
										<td class="transparent"><input type="text" style="width: 200px;" maxlength="32" id="studentLastName" name="studentLastName"></td>
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight">
										<%if(isMandatoryBirthDate) { %>
											<span class="asterisk">*</span>
										<% }%>
										Date of  Birth:</td>
										<td nowrap="" class="transparent">    
											<select style="width: 65px;"   id="monthOptions" name="monthOptions">		
											</select>
													
											<select style="width: 65px;"  id="dayOptions" name="dayOptions">
											</select>
											
											<select style="width: 65px;"  id="yearOptions" name="yearOptions">
											</select>
										</td>                    
						   
									</tr>
									<tr class="transparent">
										<td width="110" nowrap="" class="transparent alignRight"><span class="asterisk">*</span>&nbsp;Gender:</td>
										<td class="transparent">
										 <select id="genderOptions"  name="genderOptions" style="width: 200px;">
										 </select> 
										</td>

									</tr>
									<tr class="transparent">
										<td width="110" class="transparent alignRight"><span class="asterisk">*</span>&nbsp;Grade:</td>
										<td class="transparent">  
											<select id="gradeOptions" name="gradeOptions" style="width: 200px;">
											</select> 
										</td>
									</tr>
									
									<!--ext_pin1 is added for DEX CR-->
									<tr class="transparent">
										<td  width="110" class="transparent alignRight">	
										 <%if(isMandatoryStudentId) { %>
											<span class="asterisk">*</span>&nbsp;
										  <%} %>	
										 <%if(isStudentIdConfigurable) {%> 
											 <%=studentIdArrValue[0] %>	:
										 <%} else {%> 
											Student ID:	
										 <%} %>
										 </td>
										
										</td>
										<td class="transparent"><input type="text" style="width: 200px;" maxlength="<%= isStudentIdConfigurable ? new Integer(studentIdArrValue[1]).intValue()>0 && new Integer(studentIdArrValue[1]).intValue()<32 ? new Integer(studentIdArrValue[1]).intValue() : 32 : 32 %>" id="studentExternalId" name="studentExternalId"></td>
									</tr>
									<tr class="transparent">
										<td  width="110" class="transparent alignRight">
										<%if(isStudentId2Configurable) {%> 
											<%=studentId2ArrValue[0] %>	: 
										<%} else {%> 
										Student Id 2:
										<%} %>
										</td>
										<td class="transparent"><input type="text" style="width: 200px;" maxlength="<%=isStudentId2Configurable ? new Integer(studentId2ArrValue[1]).intValue()>0 && new Integer(studentId2ArrValue[1]).intValue()<32 ? new Integer(studentId2ArrValue[1]).intValue() : 32 : 32 %>" id="studentExternalId2" name="studentExternalId2"></td>
									</tr>
									<%if(isLasLinkCustomer) { %>
									 <tr class="transparent">
										<td nowrap="" width="110" class="transparent alignRight">Purpose of Test:</td>
										
										<td nowrap="" class="transparent">    
											<select style="width: 200px;"   id="testPurposeOptions" name="testPurposeOptions">		
											</select>
										</td>       					   
									</tr>
								   <%} %>
								   	<tr style="display: table-row;" id="message" class="transparent">
								   		<td width="110" class="transparent alignRight"><span class="asterisk">*</span>&nbsp;Organization:</td>
										<td class="transparent-small">
											<div id="notSelectedOrgNodes" style="width:200px; visibility:visible; padding-left: 4px"><font color="gray">None selected. Use the control on the right to
											select.</font>
											</div>
											<div id="selectedOrgNodesName" style="width:200px, padding-left: 4px"></div>
										
										</td>
									</tr>
								</tbody>
								</table>
								</td>
								<td style ="vertical-align: top;">
								<table class="transparent">
								<tbody>
									
									<tr class="transparent" >
										<td class="transparent-top">

										<table class="transparent" id="orgTable">
											<tbody>
											<tr>
											<td>
											<div   style=" background:#D4ECFF; height:25px; color:#4297D7; width: 350px; font-family: Arial,Verdana,Sans Serif; font-size: 13px;  font-style: normal;  font-weight: bold; vertical-align:middle;">&nbsp;Select OrgNode</div>
											</td>
											</tr>
												<tr>
													<td >
														<div  id="innerID" 
																style="background:#ffffee; overflow:auto; height: 235px;  width: 350px; font-family: Arial, Verdana, Sans Serif; font-size: 13px; font-style: normal; font-weight: normal; position: absolute;">
														</div>
													
													</td>
												</tr>
											</tbody>
										</table>

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
				<h3><a href="#">Student Additional Information</a></h3>
				<div id="Student_Additional_Information">
					<jsp:include page="/studentOperation/add_edit_student_by_demographic.jsp" />
				</div>
			</div>
			<div>
				<h3><a href="#">Specific Accommodations</a></h3>
				<div id="Student_Accommodation_Information">
					<jsp:include page="/studentOperation/add_edit_student_by_accommodation.jsp" />
				</div>
			</div>
			
			<div>
	<table cellspacing="0" cellpadding="0" border="0" id="TblGrid_list2_2" class="EditTable" width="100%">
		<tbody>
			<br>
			<tr id="Act_Buttons" align="center">
				<td  width="0%" id="preButton" style= "visibility:hidden"><a class="fm-button ui-state-default ui-corner-left" id="pData" href="javascript:void(0)"><span
					class="ui-icon ui-icon-triangle-1-w"></span></a></td><td id="nextButton" style= "visibility:hidden"><a class="fm-button ui-state-default ui-corner-right" id="nData"
					href="javascript:void(0)"><span class="ui-icon ui-icon-triangle-1-e"></span></a></td>
					<td>&nbsp;</td>
				<td  width="100%">
					<center>
					<input type="button"  id="sData" value="&nbsp;Save&nbsp;" onclick="javascript:studentDetailSubmit(); return false;" class="ui-widget-header">
					<input type="button"  id="cData" value="&nbsp;Cancel&nbsp;&nbsp;" onclick="javascript:onCancel(); return false;" class="ui-widget-header">
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
