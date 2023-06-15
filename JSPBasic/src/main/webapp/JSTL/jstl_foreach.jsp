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

	<h3>1~100까지 홀수의 합</h3>
	<%
	int num = 0;
	for(int i = 1; i <= 100; i+=2){
		num = num + i;
	}
	%>		
	결과 : <%=num %>	
	
	
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2"> 	
		<c:set var="sum" value="${sum + i }"/>
	</c:forEach>
	
	결과 : ${sum }
	
	<hr/>
	<h3>구구단 3단</h3>
	
	<c:forEach var="i" begin="1" end="9" step="1">
		3 * ${i } = ${3 * i }<br>
	</c:forEach>
	
	<hr/>
	<h3>2~9단까지 구구단 출력</h3>
	
	<c:forEach var="j" begin="2" end="9" step="1">
		<c:forEach var="k" begin="1" end="9" step="1">
		${j } * ${k } = ${j * k }<br>	
		</c:forEach>
		-------------------------------------<br>	
	</c:forEach>
	
	<%
	//배열을 선언 (자바코드로 선언)
	int[] arr = new int[] {1,2,3,4,5};
	//향상된 for문
	for( int a : arr ) {
		out.println(a);
	}	
	%>
	
	<!-- jstl 로 표현하면... -->
	<c:set var="arr" value="<%= new int[] {1,2,3,4,5}  %>"/>
	
	<!-- jstl로 향상된 for문 돌리기 -->
	<!-- varStatus는 변수의 상태값을 사용할 수 있는 변수 -->
	<c:forEach var="a" items="${arr }" varStatus="s">
		인덱스 번호 : ${s.index }<br>
		숫자번호 : ${s.count }<br>
		값 : ${a }<br>
	</c:forEach>
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>