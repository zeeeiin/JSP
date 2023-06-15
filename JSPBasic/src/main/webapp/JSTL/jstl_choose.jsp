<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>choose</h3>
	
	<c:choose> 순서대로 검사하고 넘어간다.
	
		if
		<c:when test="${param.name == '홍길동' }">
			홍길동입니다.
		</c:when>
		else
		<c:when test="${param.name == '이순신' }">
			이순신입니다.
		</c:when>
		else 둘 다 아닐 때
		<c:otherwise>		
			둘 다 아닙니다.
		</c:otherwise>		
	</c:choose>	
	
	<!-- choose문으로 age변수를 if ~ else만 처리 -->
	<!-- if ~ else니까 when, otherwise로 처리 -->
	
	<c:choose>
		<c:when test="${param.age >= 20 }">
			성인입니다.
		</c:when>
		<c:otherwise>		
			성인이 아닙니다.
		</c:otherwise>	
	</c:choose>
	
	
	
</body>
</html>