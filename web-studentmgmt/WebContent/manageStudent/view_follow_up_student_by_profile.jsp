<%@ page import="java.io.*, java.util.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="dto.PathNode"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<netui-data:declareBundle bundlePath="oasResources" name="oas"/>
<netui-data:declareBundle bundlePath="webResources" name="web"/>
<netui-data:declareBundle bundlePath="widgetResources" name="widgets"/>

<%
    Boolean profileEditable = (Boolean)request.getAttribute("profileEditable"); 
	Boolean isMandatoryBirthDate = (Boolean)request.getAttribute("isMandatoryBirthDate"); //GACRCT2010CR007 - Disable Mandatory Birth Date 
	
	//Start Change For CR - GA2011CR001
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
	
	pageContext.setAttribute("gtidMandatory",new Boolean(isMandatoryStudentId));

	// End of Change CR - GA2011CR001 

%>


<table class="simple">
    <tr class="transparent">
        
        
<!-- Student Information -->
<td class="transparent-top" width="40%">


<table class="transparent">
    <tr class="transparent">
        <td class="transparent alignRight" width="200"><netui:content value="Student Name:"/></td>
        <td class="transparent">
          
         <!-- Added tagId to resolve javascript isssue occured in mozilla  for webLogic 10.3-->       
          <netui:label value="Test,Stu"/>
                  
                 
        </td>
    </tr>
     <tr class="transparent">
        <td class="transparent alignRight" width="200"><netui:content value="Instructor Name:"/></td>
        <td class="transparent">
          
         <!-- Added tagId to resolve javascript isssue occured in mozilla  for webLogic 10.3-->       
             <netui:label value="Test,Instructor"/>
                  
                 
        </td>
    </tr>
   
   
     <tr class="transparent">
        <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="Student ID or Social Security Number:"/></td>
         <td class="transparent"> <netui:label value="TEST-STU-0208"/></td>
    </tr>
     <tr class="transparent">
        <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="Date of Class Update:"/></td>
        <td class="transparent"> <netui:label value="11/11/2009"/>
      
     </td>
     </tr>
    <tr class="transparent">
        <td class="transparent alignRight" width="200"><netui:content value="Hours of Instruction:"/></td>
       <td class="transparent"><netui:label value="20"/></td>
     </tr>
    
    
</table>
</td>


    
<!-- OrgNode PathList -->
<td class="transparent-top" width="60%">
<table class="transparent">
 <tr class="transparent">
   <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="Address Line 1:"/></td>
        <td class="transparent"><netui:label value="4 Parametta Springs"/></td>                    
    </tr>
      <tr class="transparent">
        <td class="transparent alignRight" width="200"><netui:content value="Address Line 2:"/></td>
        <td class="transparent"><netui:label value="California "/></td>
    </tr>
    <tr class="transparent" >
         <td class="transparent alignRight" width="200"><netui:content value="City:"/></td>
        <td class="transparent"><netui:label value="California "/></td>                           
    </tr>
     <tr class="transparent" >
         <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="State:"/></td>
        <td class="transparent"><netui:label value="California "/></td>                           
    </tr>
   
   <tr class="transparent">
        <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="Zip Code:"/></td>
        <td class="transparent">
           <netui:label value="92929 "/>
            -
            <netui:label value="8314"/>
        </td>
    </tr>
        <tr class="transparent">
        <td class="transparent alignRight" width="200"><span class="asterisk">*</span>&nbsp;<netui:content value="Phone Number:"/></td>
        <td class="transparent">
            <netui:label value="123"/>
            -
            <netui:label value="123"/>
            -
            <netui:label value="1234"/>
            Ext:
           <netui:label value="1234"/>
        </td>
    </tr>
</table>
</td>
</tr>


</table>

<br/>
