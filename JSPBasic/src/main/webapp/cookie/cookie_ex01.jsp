<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//id_check 쿠키가 있다면, input태그의 value값에다가 id_check쿠키의 값을 넣어주세요.
	//속성을 미리 주고 싶다면 value에 넣을 수 있다.
	
	Cookie[] arr = request.getCookies(); //쿠키값을 끄집어내는 기능, 반환타입은 쿠키배열타입
	
	String id_check = "";
	if( arr != null) {	
		
		for(int i = 0; i < arr.length; i++){
			String name = arr[i].getName();				
			if( name.equals("id_check")) { 				
				id_check = arr[i].getValue();	
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

	<h3>쿠키 확인하기</h3>

	<form action="cookie_ex01_ok.jsp" method="post">
	
		아이디 : <input type="text" name="id" value="<%=id_check %>"><br> 
		비밀번호 : <input type="password" name="pw"><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name="id_check" value="y">아이디 기억하기	
												<!-- 실제 값은 y-->
	</form>


</body>
</html>