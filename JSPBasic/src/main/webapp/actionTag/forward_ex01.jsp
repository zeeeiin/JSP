<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	액션태그는 jsp로 시작하고 동작을 나타내는 태그
	혼자 사용하는 경우에는 />로 마감처리 할 수 있다.
	 --%>
	<jsp:forward page="forward_ex01_ok.jsp"/>

	<jsp:forward page="">	
	</jsp:forward>

</body>
</html>