<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. id, pw를 받습니다.
	2. id가 aaa123이고, pw가 1234라면 로그인 성공으로 간주하고 res_ex02_ok로 리다이렉트
	3. 틀린 경우에는 res_ex02_no로 리다이렉트	
	*/
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if( id.equals("aaa123") && pw.equals("1234")){
		response.sendRedirect("res_ex02_ok.jsp");
	} else {
		response.sendRedirect("res_ex02_no.jsp");
	}
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>