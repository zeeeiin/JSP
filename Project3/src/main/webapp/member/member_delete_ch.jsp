<%@ page import="com.sky.member.model.MemberDAO"%>
<%@ page import="com.sky.member.model.MemberVO"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = MemberDAO.getInstance();	
	int result = dao.deleteInfo(id, pw);
	
	if(result == -1) {	
	
%> 	

	<script type="text/javascript">
		alert("아이디와 비밀번호를 확인해주세요.");
		history.back();
	</script>
	
	<%
		} else if (result == 0) {		
	%>
	
	<script type="text/javascript">
		alert("비밀번호를 다시 입력해주세요.");
		history.back();
	</script>
	
	<%
	} else {
		session.invalidate();
	%>	
	
	<script type="text/javascript">
		alert("회원 탈퇴가 완료되었습니다. 곧 돌아오게 될거예요...");
		location.href="main.jsp";
	</script>
	
	<% } %>
 	<!-- <br><br>
        <b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
        <br><br><br>
    
        <input type="button" value="확인" onclick="location.href='../main.jsp'" style="background-color: #dcdcdc; border-color: white; color: #646464; width: 90px; height: 30px;">
 -->
 
</body>
</html>