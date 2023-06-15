<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//2번 페이지에서 포워드로 넘어온 값
	String name = (String)request.getAttribute("name"); //키
	Date date = (Date)request.getAttribute("date");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과 페이지</h3>	
	 
	<%=name %>
	<%=date %>
	
</body>
</html>