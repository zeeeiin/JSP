<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//쿠키를 배열로 끄집어 내야한다.
	//쿠키는 한 개가 아니니까 배열로 담아두는 것
	//1. name 값이 user_id 인 쿠키를 찾아야한다.
	//조건은 무조건 넣어주는게 좋다.
		
	Cookie[] arr = request.getCookies();

	//공백 변수 선언	
	String name = ""; //없는 경우 공백, 있는 경우는 쿠키의 값이 실릴 것이다.

	if( arr != null) {		
		for(Cookie c : arr){ //원하는 쿠키 값을 찾아야해서 반복이 들어감	
			if(c.getName().equals("user_id")) { //쿠키가 있음. getName은 문자열 타입 이름을 찾는다.
				//값을 찾는다.				
				name = c.getValue();	
			}
		}
	}
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과페이지</h3>
	
	<%--
	user_id 쿠키를 확인해서 "xxx님 환영합니다"를 화면에 출력
	 --%>
	 
	 <%=name %>님 환영합니다!

</body>
</html>