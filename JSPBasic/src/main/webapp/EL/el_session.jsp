<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 값 저장
	session.setAttribute("name", "홍길동");
	session.setAttribute("id", "hong123");

	//app에 저장
	application.setAttribute("count", 1);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="el_session_ok.jsp">el태그 확인하기</a>
</body>
</html>