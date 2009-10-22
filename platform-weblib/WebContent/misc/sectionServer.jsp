<!--Generated by WebLogic Workshop-->
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>

<netui-template:template templatePage="../resources/jsp/template.jsp">
    <netui-template:setAttribute name="title" value="OrderedList"/>
    <netui-template:section name="bodySection">
    
    <h1>Collapsible Section Server</h1>
    <p>
    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
    deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
    provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
    fuga. 
    </p>


<netui:form action="sectionServer">    

<netui:hidden dataSource="actionForm.actionElement"/> 
<netui:hidden dataSource="actionForm.currentAction"/>


<p>
    <ctb:collapsibleSection sectionId="sectionOne" sectionTitle="Section One" sectionVisible="actionForm.sectionVisible">
        <table class="simple">
        <tr class="simple">
        <td class="simple">
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
            deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
            provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
            fuga. 
            <br/>
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
            deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
            provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
            fuga. 
        </td>
        </tr>
        </table>
    </ctb:collapsibleSection>
</p>

<p>
    <ctb:collapsibleSection sectionId="sectionTwo" sectionTitle="Section Two" sectionVisible="actionForm.secondSectionVisible">
        <table class="simple">
        <tr class="simple">
        <td class="simple">
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
            deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
            provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
            fuga. 
            <br/>
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
            deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
            provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
            fuga. 
        </td>
        </tr>
        </table>
    </ctb:collapsibleSection>
</p>

</netui:form>
    
    
    </netui-template:section>
</netui-template:template>

