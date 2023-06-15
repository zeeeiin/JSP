<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//쿠키는 생명주기가 다 할 때까지 모든 페이지에서 사용할 수 있음.
	//요청이 들어올 때마다 쿠키는 자동으로 전송된다.
	//쿠키는 리퀘스트객체로 받는데
	
	Cookie[] arr = request.getCookies(); //쿠키값을 끄집어내는 기능, 반환타입은 쿠키배열타입
	
	//쿠키가 없는 경우 에러가 나기 때문에 쿠키가 null이 아닌 경우를 먼저 설정해줘야한다.
	if(arr != null){ //쿠키가 존재한다면
		
		for(Cookie c : arr){
			String name = c.getName();
			String value = c.getValue();
			
			out.println(name + "-" + value + "<br>");
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

	<a href="cookie_remove.jsp">쿠키 삭제하기</a>

</body>
</html>