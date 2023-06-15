<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   
    //세션은 서버와의 정보를 유짖하기 위한 수단으로 서버에서 생성하고, 서버에서 저장한다. 
    //세션은 내장 객체이기 때문에 ctrl+space 하면 뜬다.    
    session.setAttribute("user_id", "xxx123"); //키, 값(오브젝트)
    session.setAttribute("user_name", "mong");
    
    //세션의 시간 설정
    session.setMaxInactiveInterval(3600); //1시간 설정   
    
    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session_get.jsp">세션확인하기</a>

</body>
</html>