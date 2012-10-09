<!--Generated by WebLogic Workshop-->
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<%@ taglib uri="ctb-widgets.tld" prefix="ctb"%>

<netui-template:template templatePage="../resources/jsp/template.jsp">
    <netui-template:setAttribute name="title" value="OrderedList"/>
    <netui-template:section name="bodySection">
    
    <h1>Ordered List</h1>
    <p>
    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
    deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
    provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
    fuga. 
    </p>


<netui:form action="viewOrderedList">    
<table class="transparent" >
    <tr class="transparent">
        <td class="transparent">
            <select name="choiceOptions" size="5">
                <option  value="1" id="First Choice">First Choice</option>
                <option value="2" id="Second Choice">Second Choice</option>
                <option value="3" id="Third Choice" selected>Third Choice</option>
                <option value="4" id="Fourth Choice">Fourth Choice</option>
                <option value="5" id="Fifth Choice">Fifth Choice</option>
            </select>
        </td>
        <td class="transparent">
            <netui:anchor href="#" onClick="return moveSelectedOption('choiceOptions', 'moveUp');">
                <img src="/platform-weblib/resources/images/misc/sort_up.gif" border="0">
            </netui:anchor>
            <br/><br/><br/>
            <netui:anchor href="#" onClick="return moveSelectedOption('choiceOptions', 'moveDown');">
                <img src="/platform-weblib/resources/images/misc/sort_down.gif" border="0">
            </netui:anchor>
        </td>
    </tr>
</table>
</netui:form>
    
    <p>
    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
    deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non 
    provident, por favor similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum 
    fuga. 
    </p>
    
    </netui-template:section>
</netui-template:template>
