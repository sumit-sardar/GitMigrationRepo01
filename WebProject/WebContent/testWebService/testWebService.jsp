<%@ page import="java.io.*, java.util.*"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%
	String resultText = (String)request.getAttribute("resultText");
	String infoText = (String)request.getAttribute("infoText");
%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  	<title>Web Service Unit Test Page</title>

    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
	<link href="<%=request.getContextPath()%>/resources/css/widgets.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/css/roundCorners.css" rel="stylesheet" type="text/css" />
     
     
  	<script type="text/javascript" src="<%=request.getContextPath()%>/sanitize.js"></script>    
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.corners.js"></script> 
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/roundCorners.js"></script>
     
</head>

<body>

<netui:form action="schedulingService">

<!-- MAIN BODY -->

<table class="simpleBody">
	<tr>
		<td align="center" valign="top" >
			<table class="bodyLayout">

				<!-- HEADER SECTION -->
				<tr class="bodyLayout">
					<td>
					 
						<table class="headerLayout" >
							<tr>
								<td align="left" width="40%"><img src="<%=request.getContextPath()%>/resources/images/ctb_oas_logo.png"></td>
								<td align="left" width="60%"><h1>TerraNova Form G - Web Service Unit Test Page</h1></td>
							</tr>
						</table>
					</td>
				</tr>


				<!-- BODY SECTION -->
				<tr>
				  	<td align="left" valign="top">

<div class="feature" style="background-color: #DEECF6; border:1px; padding: 10px;">

  	<div class="feature" style="background-color: #ffffff; border:1px; padding: 5px;">
      	
<table class="simpleBlock">
<tr><td colspan="2">
	<h3>Session Information</h3>
</td></tr>
<tr><td>Session Id:</td>
<td>
	<input type="text" id="sesionId" name="sesionId" value="165636"  />&nbsp;&nbsp;&nbsp;&nbsp;
	Remove:<input type="checkbox"  id="removeSession" name="removeSession"/>&nbsp;
</td>
</tr>
<tr><td>Product Type:</td>
<td>
<select id="productType" name="productType">
<option value="3720">Complete Battery&nbsp;&nbsp;&nbsp;&nbsp;</option>
<option value="3710">Survey</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;Level:&nbsp;<input type="text" id="level" name="level" value="13" size="2" />&nbsp;
</td>
</tr>
<tr><td>Session Name:</td>
<td><input type="text" id="sessionName" name="sessionName" value="TNG Level 13 9_07 NO ALLOW BREAKS" size="64"/>&nbsp;</td>
</tr>

<tr><td>Has Break</td>
<td><input type="checkbox" id="hasBreak" name="hasBreak"/>&nbsp;</td>
</tr>

<tr><td>Time Zone:</td>
<td>
<select id="timeZone" name="timeZone">
<option value="(GMT-10:00) Hawaii">(GMT-10:00) Hawaii&nbsp;&nbsp;</option>
<option value="(GMT-10:00) Aleutian Islands">(GMT-10:00) Aleutian Islands&nbsp;&nbsp;</option>
<option value="(GMT-09:00) Alaska">(GMT-09:00) Alaska&nbsp;&nbsp;</option>
<option selected="" value="(GMT-08:00) Pacific Time (US and Canada); Tijuana">(GMT-08:00) Pacific Time (US and Canada); Tijuana&nbsp;&nbsp;</option>
<option value="(GMT-07:00) Mountain Time (US and Canada)">(GMT-07:00) Mountain Time (US and Canada)&nbsp;&nbsp;</option>
<option value="(GMT-07:00) Arizona">(GMT-07:00) Arizona&nbsp;&nbsp;</option>
<option value="(GMT-06:00) Central Time (US and Canada)">(GMT-06:00) Central Time (US and Canada)&nbsp;&nbsp;</option>
<option value="(GMT-05:00) Indiana (East)">(GMT-05:00) Indiana (East)&nbsp;&nbsp;</option>
<option value="(GMT-05:00) Eastern Time (US and Canada)">(GMT-05:00) Eastern Time (US and Canada)&nbsp;&nbsp;</option>
</select>
</td></tr>

<tr><td>Start Date:</td><td><input type="text" id="startDate" name="startDate" value="09/07/12" /></td></tr>
<tr><td>End Date:</td><td><input type="text" id="endDate" name="endDate" value="10/28/12" /></td></tr>
<tr><td>Start Time:</td><td><input type="text" id="startTime" name="startTime" value="8:00 AM" /></td></tr>
<tr><td>End Time:</td><td><input type="text" id="endTime" name="endTime" value="5:00 PM" /></td></tr>
</table>
<br/>

<table class="simpleBlock">
<tr><td colspan="5"><h3>Accommodation Information</h3></td></tr>
<tr><td colspan="5">Has Accommodations:&nbsp;<input type="checkbox" id="hasAccomm" name="hasAccomm" onclick="return toggleAccomm(this);"/>&nbsp;</td></tr>
<tr id="accommDiv" name="accommDiv" style="display: none">
<td width="120">Calculator:&nbsp;<input type="checkbox" id="calculator" name="calculator"/>&nbsp;</td>
<td width="120">Test Pause:&nbsp;<input type="checkbox" id="testPause" name="testPause"/>&nbsp;</td>
<td width="120">Untimed Test:&nbsp;<input type="checkbox" id="untimed" name="untimed"/>&nbsp;</td>
<td width="120">Highlighter:&nbsp;<input type="checkbox" id="highlighter" name="highlighter"/>&nbsp;</td>
<td width="320">Custom Font/Color:&nbsp;<input type="checkbox" id="customColor" name="customColor"/>&nbsp;(set to default values)</td>
</tr>
</table>


<table class="simpleBlock">
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td><h3>Subtest Information</h3></td>
<td>&nbsp;</td>
</tr>
<tr><td width="300">
TerraNova Reading - Part 1&nbsp;<input type="checkbox" checked id="subtest1" name="subtest1"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey1" name="subtestKey1" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Reading - Part 2&nbsp;<input type="checkbox" checked id="subtest2" name="subtest2"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey2" name="subtestKey2" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Language&nbsp;<input type="checkbox" checked id="subtest3" name="subtest3"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey3" name="subtestKey3" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Mathematics - Part 1&nbsp;<input type="checkbox" checked id="subtest4" name="subtest4"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey4" name="subtestKey4" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Mathematics - Part 2&nbsp;<input type="checkbox" checked id="subtest5" name="subtest5"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey5" name="subtestKey5" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Science&nbsp;<input type="checkbox" checked id="subtest6" name="subtest6"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey6" name="subtestKey6" value="" size="8"/></td>
</tr>
<tr><td width="300">
TerraNova Social Studies&nbsp;<input type="checkbox" checked id="subtest7" name="subtest7"/>&nbsp;
</td>
<td>Subtest Key: <input type="text" id="subtestKey7" name="subtestKey7" value="" size="8"/></td>
</tr>
</table>


<table class="simpleBlock">
<tr><td>&nbsp;</td></tr>
<tr><td>
	<h3>Student Information</h3>
	</td></tr>
<tr><td>
Student ID:<input type="text" id="studentId1" name="studentId1" value="" size="8"/>&nbsp;
First Name:<input type="text" id="firstName1" name="firstName1" value="firstName1" size="32"/>&nbsp;
Last Name:<input type="text" id="lastName1" name="lastName1" value="lastName1" size="32"/>&nbsp;
Gender:<select id="gender1" name="gender1">
<option value="Unknown">Unknown</option>
<option selected value="Male">Male</option>
<option value="Female">Female</option>
</select>&nbsp;
Grade:<select id="grade1" name="grade1">
<option value="K">K</option>
<option selected value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>&nbsp;
Student Key:<input type="text" id="studentKey1" name="studentKey1" value="" size="8"/>&nbsp;&nbsp;&nbsp;&nbsp;
Remove:<input type="checkbox"  id="studentRemoveKey1" name="studentRemoveKey1"/>&nbsp;
</td></tr>

<tr><td>
Student ID:<input type="text" id="studentId2" name="studentId2" value="" size="8"/>&nbsp;
First Name:<input type="text" id="firstName2" name="firstName2" value="firstName2" size="32"/>&nbsp;
Last Name:<input type="text" id="lastName2" name="lastName2" value="lastName2" size="32"/>&nbsp;
Gender:<select id="gender2" name="gender2">
<option value="Unknown">Unknown</option>
<option value="Male">Male</option>
<option selected value="Female">Female</option>
</select>&nbsp;
Grade:<select id="grade2" name="grade2">
<option value="K">K</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option selected value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>&nbsp;
Student Key:<input type="text" id="studentKey2" name="studentKey2" value="" size="8"/>&nbsp;&nbsp;&nbsp;&nbsp;
Remove:<input type="checkbox"  id="studentRemoveKey2" name="studentRemoveKey2"/>&nbsp;
</td></tr>


<tr><td>
Student ID:<input type="text" id="studentId3" name="studentId3" value="" size="8"/>&nbsp;
First Name:<input type="text" id="firstName3" name="firstName3" value="firstName3" size="32"/>&nbsp;
Last Name:<input type="text" id="lastName3" name="lastName3" value="lastName3" size="32"/>&nbsp;
Gender:<select id="gender3" name="gender3">
<option value="Unknown">Unknown</option>
<option selected value="Male">Male</option>
<option value="Female">Female</option>
</select>&nbsp;
Grade:<select id="grade3" name="grade3">
<option value="K">K</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option selected value="12">12</option>
</select>&nbsp;
Student Key:<input type="text" id="studentKey3" name="studentKey3" value="" size="8"/>&nbsp;&nbsp;&nbsp;&nbsp;
Remove:<input type="checkbox"  id="studentRemoveKey3" name="studentRemoveKey3"/>&nbsp;
</td></tr>

<tr><td>
Student ID:<input type="text" id="studentId4" name="studentId4" value="" size="8"/>&nbsp;
First Name:<input type="text" id="firstName4" name="firstName4" value="firstName4" size="32"/>&nbsp;
Last Name:<input type="text" id="lastName4" name="lastName4" value="lastName4" size="32"/>&nbsp;
Gender:<select id="gender4" name="gender4">
<option selected value="Unknown">Unknown</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>&nbsp;
Grade:<select id="grade4" name="grade4">
<option value="K">K</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option selected value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>&nbsp;
Student Key:<input type="text" id="studentKey4" name="studentKey4" value="" size="8"/>&nbsp;&nbsp;&nbsp;&nbsp;
Remove:<input type="checkbox" id="studentRemoveKey4" name="studentRemoveKey4"/>&nbsp;
</td></tr>

</table>

<br/>
<table class="simpleBlock" width="100%">
<tr>
	<td>
		<b>Repeat input student(s)&nbsp;<input type="text" id="repeatCount" name="repeatCount" value="0" size="4"/>&nbsp;times</b>
	</td>
</tr>
<tr>
	<td width="100%"><h3>&nbsp;</h3><input type="submit" value="Invoke Scheduling Service" onclick="clearInfo();" /></td>
</tr>
</table>

</div>
</div>

</td>
</tr>

</table>

		<div id="resultText">
			<br/>
			<h2><%= resultText %></h2>
		</div>

		<div id="infoText" align="left">
			<%= infoText %>
		</div>

</netui:form>

</body>
</html>