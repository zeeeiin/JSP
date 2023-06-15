<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String remote = request.getRemoteAddr();
	
	//문서에서 헤더에 실린 값을 가져올 수 있다.
	String header = request.getHeader("Content-Type"); //헤더정보값	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	contextPath (프로젝트 식별주소) : <%= path %><br><br> 
	url : <%= url %><br><br>
	uri(포트번호 제외한 경로만 남은 값) : <%= uri %><br><br>
	접속한 주소(본인 컴퓨터에서 접속하면 00001) : <%= remote %><br><br>
	요청에 대한 문서타입 : <%= header %><br><br>
</body>
</html>