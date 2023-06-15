<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//쿠키 생성 (쿠키 객체 사용 가능 - 생성자와 매개변수 넣기) 문자열로만 만들 수 있다.
 	Cookie cookie = new Cookie("choco", "aaa123"); //키, 값(앞이 키, 뒤가 값)
 	Cookie cookie2 = new Cookie("caramel", "bbb123"); 	

 	//쿠키 시간 설정
 	cookie.setMaxAge(1800); //만료 기간 설정하기, 1800 = 30분
 	cookie2.setMaxAge(80); //30초(현재시간 기준)
 	
 	//쿠키를 response에 담아서 저장
 	response.addCookie(cookie); //addCookie엔 쿠키만 들어갈 수 있다. 
 	response.addCookie(cookie2); 
 	//이제 쿠키는 서버에서 만들어진것. 실행하면 클라이언트로 넘어온다.	
 	
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="cooke_get.jsp">쿠키 확인하기</a>


</body>
</html>