<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
	fmt는 형변환을 다루는 기능을 가지고 있다.
	
	Integer.parseInt() = String-> int
	
	parse → 다른 타입으로 형변환
	format -> 같은 타입의 형태를 변환
	 --%>
	 
	<h3>formatNumber, parseNumber, formatDate, parseDate</h3>
	
	<h3>formatDate => (날짜 데이터를 -> 날짜 형식으로 변환)</h3>

	<c:set var="a" value="<%=new Date() %>"/>

	<fmt:formatDate var="a01" value="${a}" pattern="yyyy년 MM월 dd일"/>






	<hr/>
	<h3>2020년 05월 03일 으로 변경해서 출력</h3>
    <c:set var="TIME_A" value="2020/05/03" />
    <c:set var="TIME_C" value="2020-05-03 21:30:22" />
    <c:set var="TIME_D" value="<%=new Date() %>" />

	<!-- 이렇게 쓰면 절대 안 됨. 이해를 못한 것 -->
	<fmt:formatDate value="${TIME_A }" pattern="yyyy년 MM월 dd일"/> 
	
	<br>
	<!-- A로 변수화 시키기 -->
	<fmt:parseDate var="A" value="${TIME_A }" pattern="yyyy/MM/dd"/> 
	<!-- 문자이기 때문에 위에서 변수화 시키고 다시 변환해야 최종적으로 출력이 정상적으로 된다. -->
	<fmt:formatDate value="${A }" pattern="yyyy년 MM월 dd일"/><br>
	
	<br>
	<!-- 날짜데이터로의 형변환. B 변수에 저장. -->
	<fmt:parseDate var="B" value="${TIME_C }" pattern="yyyy-MM-dd HH:mm:ss"/>
	<fmt:formatDate value="${B }" pattern="yyyy년 MM월 dd일"/><br>

	<br>
	<fmt:formatDate value="${TIME_D }" pattern="yyyy년 MM월 dd일"/><br>



	<!-- 내가 풀어본 것 -->
	<fmt:formatDate value="${TIME_D }" pattern="yyyy년 MM월 dd일"/><br>
	
	<fmt:parseDate var="a" value="2020/05/03" pattern="yyyy/MM/dd"/>
	<fmt:formatDate value="${a }" pattern="yyyy년 MM월 dd일"/><br>
	
	<fmt:parseDate var="c" value="2020-05-03 21:30:22" pattern="yyyy-MM-dd HH:mm:ss"/>
	<fmt:formatDate value="${c }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/><br>
	
	
</body>
</html>