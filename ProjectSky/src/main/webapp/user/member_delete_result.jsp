<%@page import="com.sky.member.model.MemberDAO"%>
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
	String id = (String)session.getAttribute("name");
	String pw = request.getParameter("pw");
	MemberDAO dao = MemberDAO.getInstance();
	int check = dao.deleteInfo("name", "pw");
	
	if(check == 1) {		
		session.invalidate();
%>
		<script>
			alert("회원 탈퇴가 정상처리되었습니다.");
			location.href='../main.jsp';
		</script>
		
<%	}else { %>

		<script>
			alert("회원 탈퇴에 실패했습니다.");
			history.go(-1);
			/* location.href='/member/member_mypage.jsp'; */
		</script>
<% } %>

</body>
</html>