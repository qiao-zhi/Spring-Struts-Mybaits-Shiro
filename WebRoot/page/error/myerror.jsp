<%@page import="javax.servlet.jsp.tagext.Tag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义异常页面</title>
</head>
<body>
<!-- 用于排错 -->
<s:debug></s:debug>

<!-- 可以用EL，可以用struts标签 -->
<%-- <s:property value="exception"/>   --%>
<%-- ${exception } --%>

自定义异常页面!<br/><br/>

<!-- 可以用EL，可以用struts标签 -->
<h1><s:property value="exception.message"/>  
<%-- ${exception.message } --%></h1>

</body>
</html>