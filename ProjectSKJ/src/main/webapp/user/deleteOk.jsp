<%@page import="com.sky.user.model.UserDAO"%>
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
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");

	UserDAO udao = new UserDAO();
			
	int result = udao.deleteInfo(name, pw);
	
	if(result == -1){
		%>
	<script type="text/javascript">
		alert("비밀번호 오류");
		history.back();
	</script>	
	<%	
	} else if(result == 0){
		%>
		<script type="text/javascript">
		alert("비밀번호 오류");
		history.back();
	</script>	
	<% 	} else {
		session.invalidate();
	%>
	<script type="text/javascript">
		alert("삭제완료");
		location.href="main.jsp";
	</script>
<% 	} 	%>

</body>
</html>