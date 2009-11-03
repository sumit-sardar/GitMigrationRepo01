<%@ page import="java.io.*, java.util.*"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-html-1.0" prefix="netui"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-databinding-1.0" prefix="netui-data"%>
<%@ taglib uri="http://beehive.apache.org/netui/tags-template-1.0" prefix="netui-template"%>
<!--Generated by Weblogic Workshop-->
<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<netui:html>
  <head>
    <netui:base/>
    <title><netui-template:attribute name="title"/></title>
    <link href="<%=request.getContextPath()%>/resources/css/style.css" type="text/css" rel="stylesheet">
  </head>
  <body style="margin:0">
    <jsp:include page="/resources/jsp/header.jsp" />
    <br/>
    <netui-template:includeSection name="bodySection"/>
  </body>
</netui:html>
