<%@ page import="java.io.*, java.util.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<%@ taglib uri="label.tld" prefix="lb" %>
<lb:bundle baseName="testsessionApplicationResource" />
<netui-data:declareBundle bundlePath="oasResources" name="oas"/>
<netui-data:declareBundle bundlePath="webResources" name="web"/>
<netui-data:declareBundle bundlePath="widgetResources" name="widgets"/>
<netui-data:declareBundle bundlePath="helpResources" name="help"/>

<netui-template:template templatePage="/resources/jsp/oas_template.jsp">
    <netui-template:setAttribute name="title" value="${bundle.web['loadTest.window.title']}"/>
    <netui-template:setAttribute name="helpLink" value="${bundle.help['help.topic.downLoadTest']}"/>
<netui-template:section name="bodySection">
 
<!-- ********************************************************************************************************************* -->
<!-- Start Page Content -->
<!-- ********************************************************************************************************************* -->

<netui:form action="services_downloadTest">
	<table width="97%" style="margin:15px auto;" border="0"> 
		<tr>
			<td style="padding-left:5px;">
	    		<h1><lb:label key="services.downloadTest.title" /></h1>
			</td>
		</tr>
		<tr> 
			<td style="padding-left:6px;">
				 <c:if test="${ requestScope.showMessage }"> 
					<p style="color:#000"><netui:content value="${bundle.web['loadTest.title.message3']}"/>
					<br/>For details, click this link: <a href="<netui:content value="/help/index.html#downloading_the_test_on_the_student_workstation.htm"/>" onClick="return showHelpWindow(this.href);"><netui:content value="Tell me more..."/></a>
					</p>
					<br/>
				</c:if>
				<p>
				<table class="simpletable">
				<netui-data:repeater dataSource="requestScope.fileInfoList">
				    <netui-data:repeaterHeader>
				       <tr class="simpletable">
				                <th class="simpletable alignLeft" nowrap>
				                    <span>Product Type</span>
				                </th>
				                <th class="simpletable alignRight" nowrap>
				                    <span>Size</span>
				                </th>
				        </tr>
				    </netui-data:repeaterHeader>
				    <netui-data:repeaterItem>
				        <tr class="simpletable">
				            <td class="simpletable">
				        		<netui-data:getData resultId="fileName" value="${container.item.fileName}"/>    
				        		<% String fileName = (String)pageContext.getAttribute("fileName"); %>         		          
				            	<a href="<%= fileName %>">
				               		<netui:span value="${container.item.displayName}" defaultValue="&nbsp;"/>
				            	</a>
				            </td>
				            <td class="simpletable alignRight">
				               <netui:span value="${container.item.size}" defaultValue="&nbsp;"/>
				            </td>
				        </tr>
				    </netui-data:repeaterItem>
				</netui-data:repeater>
				
				    <ctb:tableNoResults dataSource="request.fileInfoList">
				        <tr class="simpletable">
				            <td class="simpletable" colspan="2">
				                 <ctb:message title="${bundle.web['loadTest.noContent.title']}" style="tableMessage">
				                     <netui:content value="${bundle.web['loadTest.noContent.message']}"/>
				                 </ctb:message>
				            </td>
				       </tr>
					</ctb:tableNoResults>
					   
				</table>
				</p>
			</td>	
		</tr>
	</table>
</netui:form>

<script type="text/javascript">
$(document).ready(function(){
	setMenuActive("services", "downloadTestLink");
});
</script>

<!-- ********************************************************************************************************************* -->
<!-- End Page Content -->
<!-- ********************************************************************************************************************* -->
    </netui-template:section>
</netui-template:template>


