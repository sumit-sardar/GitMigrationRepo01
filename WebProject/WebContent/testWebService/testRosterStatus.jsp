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

<netui:form action="rosterStatusService">

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
	<input type="text" id="sesionId" name="sesionId" value="152455"  />&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
</table>



<br/>
<table class="simpleBlock" width="100%">
<tr>
	<td width="100%"><h3>&nbsp;</h3><input type="submit" value="Get Roster Status" onclick="clearInfo();" /></td>
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

		<div id="infoText" align="left" style="font-size: 14px">
			<%= infoText %>
		</div>

</netui:form>

</body>
</html>