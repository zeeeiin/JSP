<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//쿠키 삭제는 동일한 이름으로 시간을 0초 선언하면 삭제된다.
	//직접적으로 삭제하는 문법은 없다.
	
	Cookie cookie = new Cookie("choco", "aaa123"); //이름이 같아야한다. 값을 덮어씌워지기때문에 달라도 상관없음
	
	cookie.setMaxAge(0); //0초 만들어지자마자 사라지기때문에 삭제된 것 처럼 보인다.
	
	response.addCookie(cookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키는 이미 삭제되었습니다.</h3>
	
	<a href="cookie_get.jsp">쿠키 확인하기</a>

</body>
</html>