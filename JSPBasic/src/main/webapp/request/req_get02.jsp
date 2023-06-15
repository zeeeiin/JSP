<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	// 이 메서드는 매개변수가 있다. 반환은 String 타입
	String id =	request.getParameter("id"); //input 태그의 name 값이 들어간다.
	String pw = request.getParameter("pw");
	
	//agree 처럼 다중값인 경우 ParameterValues 사용
	//반환 타입은 배열.
	String[] agree = request.getParameterValues("agree"); //input태그의 여러 개의 name을 받을 때 사용.

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>결과페이지</h3>
	
	<%=id %>
	<%=pw %>
	<%=Arrays.toString(agree) %>	
	
	
</body>
</html>