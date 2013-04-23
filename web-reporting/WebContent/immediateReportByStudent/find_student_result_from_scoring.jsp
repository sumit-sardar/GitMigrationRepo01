<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
 
<netui-data:declareBundle bundlePath="oasResources" name="oas"/>
<netui-data:declareBundle bundlePath="webResources" name="web"/>
<netui-data:declareBundle bundlePath="widgetResources" name="widgets"/>
<netui-data:declareBundle bundlePath="helpResources" name="help"/>

<netui-template:template templatePage="/resources/jsp/template.jsp">

<netui-template:setAttribute name="title" value="${bundle.web['immediatescoringreport.window.title']}"/>
<netui-template:setAttribute name="helpLink" value="#"/>
<netui-template:section name="bodySection">

<!-- ********************************************************************************************************************* -->
<!-- Start Page Content -->
<!-- ********************************************************************************************************************* -->

<h1>
    <netui:content value="${pageFlow.pageTitle}"/>
</h1>

<!-- title -->
    
    <p><netui:content value="${bundle.web['Immediate.Score.By.Session.title.message']}" /></p>


    <netui:form action="findStudentByTestSessionAndRoster">

<!--<input type="hidden" name="firstFocusId" id="firstFocusId" value="{actionForm.studentProfile.studentNumber}" />-->
 <!-- Added tagId to resolve javascript isssue  for webLogic 10.3-->       

<netui:hidden tagId="actionElement" dataSource="actionForm.actionElement"/> 
<netui:hidden tagId="currentAction" dataSource="actionForm.currentAction"/> 
<netui:hidden  dataSource="actionForm.studentMaxPage"/> 
<netui:hidden  dataSource="actionForm.testAdminId"/>
<netui:hidden  dataSource="actionForm.rosterId"/>


<!-- message -->
<jsp:include page="/immediateReportByStudent/show_message.jsp" />


<br/>
<!--  student search result -->
<a name="studentSearchResult"><!-- studentSearchResult --></a>    
<c:if test="${studentList != null}">     
    <!--<p><netui:content value="${pageFlow.pageMessage}"/></p>
    --><p><jsp:include page="/immediateReportByStudent/find_student_result.jsp" /></p>
</c:if>

<c:if test="${searchResultEmpty != null}">     
    <ctb:message title="Search Result" style="informationMessage" >
          <netui:content value="${requestScope.searchResultEmpty}"/>
    </ctb:message>
</c:if>
<br/>
<netui:button styleClass="button" value="${bundle.web['common.button.home']}" type="submit" onClick="setElementValue('currentAction', 'gotoHome');"/>

</netui:form>

</netui-template:section>
</netui-template:template>