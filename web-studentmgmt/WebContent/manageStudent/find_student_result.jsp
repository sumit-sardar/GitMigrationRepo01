<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<netui-data:declareBundle bundlePath="oasResources" name="oas"/>
<netui-data:declareBundle bundlePath="webResources" name="web"/>
<netui-data:declareBundle bundlePath="widgetResources" name="widgets"/>



<!--  studentList table -->
<table class="sortable">

    <tr class="sortable">
        <td class="sortableControls" colspan="12" height="30">&nbsp;
            <netui:button tagId="View" type="submit" value="View" onClick="setElementValue('currentAction', 'viewStudent');" disabled="${requestScope.disableButtons}"/>              
        <c:if test="${showEditButton == 'true'}">                 
            <netui:button tagId="Edit" type="submit" value=" Edit " onClick="setElementValue('currentAction', 'editStudent');" disabled="${requestScope.disableButtons}"/>              
        </c:if>
        <c:if test="${showDeleteButton == 'true'}">                 
            <netui:button tagId="Delete" type="submit" value="Delete" onClick="return verifyDeleteStudent();" disabled="${requestScope.disableButtons}"/>
        </c:if>
        </td>
    </tr>
        
        
<netui-data:repeater dataSource="requestScope.studentList">
    <netui-data:repeaterHeader>
    
    <tr class="sortable">
        <ctb:tableSortColumnGroup columnDataSource="actionForm.studentSortColumn" orderByDataSource="actionForm.studentSortOrderBy" anchorName="studentSearchResult">
            <th class="sortable alignCenter" nowrap><netui:content value="${bundle.web['common.column.select']}"/></th>                
            <th class="sortable alignLeft" width="30%" nowrap><ctb:tableSortColumn value="StudentName">Student Name</ctb:tableSortColumn></th>
            <th class="sortable alignLeft" width="30%" nowrap>&nbsp;&nbsp;Organization</th>
            <th class="sortable alignLeft" width="30%" nowrap><ctb:tableSortColumn value="LoginId">Login ID</ctb:tableSortColumn></th>
            <th class="sortable alignLeft" width="30%" nowrap><ctb:tableSortColumn value="Grade">Grade</ctb:tableSortColumn></th>
            <th class="sortable alignLeft" width="30%" nowrap><ctb:tableSortColumn value="StudentIdNumber">Student ID</ctb:tableSortColumn></th>
        </ctb:tableSortColumnGroup>
    </tr>
    
    </netui-data:repeaterHeader>
    <netui-data:repeaterItem>
    
    <tr class="sortable">
        <td class="sortable alignCenter">
            <netui:radioButtonGroup dataSource="actionForm.selectedStudentId">
                &nbsp;<netui:radioButtonOption value="${container.item.studentId}" onClick="enableElementById('View'); enableElementById('Edit'); enableElementById('Delete'); setFocus('View');">&nbsp;</netui:radioButtonOption>                
            </netui:radioButtonGroup>
        </td>        
        <td class="sortable">
            <netui:span value="${container.item.displayName}"/>
        </td>
        <td class="sortable">
            <netui:span value="${container.item.orgNodeNamesString}"/>
        </td>
        <td class="sortable">
            <netui:span value="${container.item.userName}"/>
        </td>
        <td class="sortable">
            <netui:span value="${container.item.grade}"/>
        </td>
        <td class="sortable">
            <netui:span value="${container.item.studentNumber}"/>
        </td>
    </tr>
    
    </netui-data:repeaterItem>
    <netui-data:repeaterFooter>
    
        <tr class="sortable">
            <td class="sortableControls" colspan="7">
                <ctb:tablePager dataSource="actionForm.studentPageRequested" summary="request.studentPagerSummary" objectLabel="${bundle.oas['object.students']}" foundLabel="Found" id="studentSearchResult" anchorName="studentSearchResult"/>
            </td>
        </tr>         
            
    </netui-data:repeaterFooter>
</netui-data:repeater>
    
</table>
