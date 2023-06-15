<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  a태그 사용해서 req_get01 페이지로 상대경로 -->
	<a href="../../request/req_get01.jsp">req_get01 (상대)</a>

	<!--  a태그 사용해서 req_get01 페이지로 절대경로 -->
	<a href="/JSPBasic/request/req_get01.jsp">req_get01 (절대)</a>
	
	<!-- a태그 사용해서 DemoServlet으로 상대경로 (브라우저의 경로를 확인) -->
	<a href="../../banana"> Servlet 맵핑 DemoServlet (상대)</a>

	<!-- a태그 사용해서 DemoServlet으로 절대경로 -->
	<a href="/JSPBasic/banana"> Servlet 맵핑 DemoServlet (절대)</a>
	<a href="<%=request.getContextPath() %>/banana"> Servlet 맵핑 DemoServlet (절대)</a>

	<!-- jsptag폴더 밑에 있는 이미지를 띄워주세요. img태그로 -->
	<img src="../../jsptag/1.jpg">

	<!-- contextPath = 톰캣이 프로젝트를 구분하는 경로 -->
	
	
	
	
	
	

</body>
</html>