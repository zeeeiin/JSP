<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- post 방식은 반드시 form 태그가 필요하다. method = "post" 라고 적으면 된다. -->

	<form action="req_post02.jsp" method = "post">
	
		주민번호 : <input type="text" name="ssr">
		비밀번호 : <input type="password" name="pw">
		
		<input type="submit" value="전송">
	
	
	</form>


</body>
</html>