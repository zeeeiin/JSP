<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	리다이렉트로 넘어온 값 : <%=id %><br>
	리다이렉트로 넘어온 값 : <%=name %>
	 
</body>
</html>