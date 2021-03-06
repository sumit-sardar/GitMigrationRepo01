<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<ctb:auth roles="Administrator, Administrative Coordinator, Coordinator">
<h1>Tests</h1>
<ul>
    <c:if test="${ requestScope.isSelectTest }">
        <li><span class="navleft-unclickable">Schedule Test Session</span></li>
    </c:if>
    <c:if test="${ !requestScope.isSelectTest }">    
        <li><a href="/TestAdministrationWeb/scheduleTestPageflow/ScheduleTestController.jpf" onclick="return verifyExitAddEditStudent();"><span>Schedule Test Session</span></a></li>
    </c:if>
        <li><a href="/TestSessionInfoWeb/viewtestsessions/ViewTestSessionsController.jpf" onclick="return verifyExitAddEditStudent();"><span>Find Test Session</span></a></li>
</ul>
</ctb:auth>


<ctb:auth roles="Administrator, Administrative Coordinator, Coordinator, Proctor">
<h1>Students</h1>
<ul>
<ctb:auth roles="Administrator, Administrative Coordinator">
    <c:if test="${ requestScope.isAddStudent }">
        <li><span class="navleft-unclickable">Add Student</span></li>
    </c:if>
    <c:if test="${ !requestScope.isAddStudent }">    
        <li><a href="/StudentManagementWeb/manageStudent/beginAddStudent.do" onclick="return verifyExitAddEditStudent();"><span>Add Student</span></a></li>
    </c:if>
</ctb:auth>
    <c:if test="${ requestScope.isFindStudent }">
        <li><span class="navleft-unclickable">Find Student</span></li>
    </c:if>
    <c:if test="${ !requestScope.isFindStudent }">    
        <li><a href="/StudentManagementWeb/manageStudent/beginFindStudent.do" onclick="return verifyExitAddEditStudent();"><span>Find Student</span></a></li>
    </c:if>
</ul>
</ctb:auth>


<ctb:auth roles="root, Account Manager, Administrator">
<h1>Users</h1>
<ul>
    <li><a href="/UserManagementWeb/manageUser/beginAddUser.do" onclick="return verifyExitAddEditStudent();"><span>Add User</span></a></li>
    <li><a href="/UserManagementWeb/manageUser/beginFindUser.do" onclick="return verifyExitAddEditStudent();"><span>Find User</span></a></li>
</ul>
</ctb:auth>


<ctb:auth roles="root, Account Manager, Administrator">
<h1>Organizations</h1>
<ul>
    <li><a href="/OrganizationManagementWeb/manageOrganization/beginAddOrganization.do" onclick="return verifyExitAddEditStudent();"><span>Add Organization</span></a></li>
    <li><a href="/OrganizationManagementWeb/manageOrganization/beginFindOrganization.do" onclick="return verifyExitAddEditStudent();"><span>Find Organization</span></a></li>
</ul>
</ctb:auth>


<ctb:auth roles="root, Account Manager">
<h1>Customers</h1>
<ul>
    <li><a href="/OrganizationManagementWeb/manageCustomer/beginAddCustomer.do" onclick="return verifyExitAddEditStudent();"><span>Add Customer</span></a></li>
    <li><a href="/OrganizationManagementWeb/manageCustomer/beginFindCustomer.do" onclick="return verifyExitAddEditStudent();"><span>Find Customer</span></a></li>
</ul>
</ctb:auth>


<ctb:auth roles="root, Account Manager">
<h1>Tests</h1>
<ul>
    <li><a href="/OrganizationManagementWeb/manageCustomerService/CustomerServiceManagementController.jpf" onclick="return verifyExitAddEditStudent();"><span>Reset Test Session</span></a></li>
</ul>
</ctb:auth>


<ctb:auth roles="Administrator, Administrative Coordinator, Coordinator, Proctor">
<h1>Workstation Setup</h1>
<ul>
    <li><a href="/TestSessionInfoWeb/downloadclient/DownloadClientController.jpf" onclick="return verifyExitAddEditStudent();"><span>Install Software</span></a></li>
    <li><a href="/TestSessionInfoWeb/downloadtest/DownloadTestController.jpf" onclick="return verifyExitAddEditStudent();"><span>Download Test</span></a></li>
</ul>
</ctb:auth>



