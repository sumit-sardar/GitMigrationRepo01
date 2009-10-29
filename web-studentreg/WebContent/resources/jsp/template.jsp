<%@ page import="java.io.*, java.util.*"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<!--Generated by Weblogic Workshop-->
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="netui-tags-template.tld" prefix="netui-compat-template"%>
<%@ taglib uri="netui-tags-databinding.tld" prefix="netui-compat-data"%>
<%@ taglib uri="netui-tags-html.tld" prefix="netui-compat"%>

<netui:html>
  <head>
    <netui:base/>
    <title><netui-template:attribute name="title"/></title>
    <link href="<%=request.getContextPath()%>/resources/css/legacy.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/css/widgets.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/css/orderlist.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/js_web.jsp"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/widgets.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/orderlist.js"></script>
  </head>
  <body onload="setFocusFirstElement();">

    <jsp:include page="/resources/jsp/header.jsp" />
    
    <jsp:include page="/resources/jsp/navigation.jsp" />
    
    <table class="legacyBodyLayout">
    <tr>
        <td id="legacySideNav">
            <jsp:include page="/resources/jsp/sidebar.jsp" />
        </td>
        <td id="legacyBody">

            <netui-template:includeSection name="bodySection"/>
        
        </td>
    </tr>
    </table>
  
    <jsp:include page="/resources/jsp/footer.jsp" />  
  
  </body>
</netui:html>
