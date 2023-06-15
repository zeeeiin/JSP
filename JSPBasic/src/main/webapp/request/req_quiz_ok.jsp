<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String[] inter = request.getParameterValues("inter");
		String[] major = request.getParameterValues("major");
		String region = request.getParameter("region");
		String hello = request.getParameter("hello");
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %>
	<%=pw %>	
	<%=Arrays.toString(inter) %>
	<%=Arrays.toString(major) %> 
	<%=region %>
	<%=hello %>
	

</body>
</html>