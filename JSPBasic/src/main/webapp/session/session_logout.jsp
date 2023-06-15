<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//출력이 아닌 단순 세션정보만 초기화하면 된다.
	//세션정보 삭제
	session.invalidate(); //무효화
	response.sendRedirect("session_login.jsp");

%>
