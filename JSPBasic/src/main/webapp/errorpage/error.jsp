<%@page import="org.apache.tomcat.util.descriptor.web.ErrorPage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%--
<%@ page ErrorPage="error_view.jsp" %>
--%>
<!-- 에러 발생시 보여줄 페이지 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="../session/session_login.jsp">404 에러 발생</a> 

	<%
		//error500
		String num = request.getParameter("num");
		Integer.parseInt(num);	
		
	%>

</body>
</html>