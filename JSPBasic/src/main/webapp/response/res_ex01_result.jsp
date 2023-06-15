<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String age = request.getParameter("age");
    	String name = request.getParameter("name");
    
    	int a = Integer.parseInt(age);
    	
    	if(a >= 20) { //단순히if 문으로만 쓰는게 아니고.. 기능 쓸 것
    		response.sendRedirect("res_ex01_ok.jsp");
    	} else {
    		response.sendRedirect("res_ex01_no.jsp");
    	}
    	
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>