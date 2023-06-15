<%@page import="com.sky.member.model.MemberDAO"%>
<%@page import="com.sky.member.model.MemberVO"%>
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
	request.setCharacterEncoding("utf-8");

	String name = (String)session.getAttribute("member_name");
	
	//비밀번호 맞는지 검사
	String pw = request.getParameter("pw");	
	
	MemberDAO dao = MemberDAO.getInstance();
	int result = dao.deleteInfo(name, pw);	//Check	
	
	if(result == 0){
		session.invalidate();	
%>

	<h3>회원 탈퇴 페이지</h3>

    <script>
		alert("회원 탈퇴가 정상처리되었습니다.");
		location.href='../main.jsp';
	</script>

	<font size="4" color="gray">회원탈퇴가 완료되었습니다.</font></b>
        <br><br><br>
    
    <input type="button" value="확인" onclick="javascript:window.location='../main.jsp'">
	
	<% } else { %>
		<script>
			alert("비밀번호를 다시 확인해주세요.");
			history.go(-1);
		</script>
	<% } %>

</body>
</html>