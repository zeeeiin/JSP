<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int a = 10;
	if(a >= 10){
		out.println("<b>참입니다.</b>");
	} else {
		out.println("<b>거짓입니다.</b>");
	}
	%>
	
	<%	if(a >= 10){ %>
		<b>참입니다.</b>
	<% } else { %>
		<b>거짓입니다.</b>
	<% } %>
	
	
	<hr/>
	
	
	
	
	
	
	
	
	
		
</body>
</html>