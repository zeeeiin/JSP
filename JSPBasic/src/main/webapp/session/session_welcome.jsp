<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 값이 있다면 로그인. 세션에서 값을 찾을 것.
	String user_id = (String)session.getAttribute("user_id");	
	String user_nick = (String)session.getAttribute("user_nick");
	
	//로그인한 사람만 접근이 가능
	//세션이 없다면 로그인을 하지않은 것
	if( session.getAttribute("user_id") == null ) {
		response.sendRedirect("session_login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>로그인 성공!</h3>
	<%=user_id %>(<%=user_nick %>)님 환영합니다! <br><br>

	<a href="session_logout.jsp">로그아웃</a><br>

</body>
</html>