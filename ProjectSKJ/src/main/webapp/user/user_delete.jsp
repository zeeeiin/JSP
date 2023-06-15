<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script language="javascript">

	function check(){
		if(!document.delform.pw.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			return false;
		}
		
	}

</script>

<div style="text-align: center">

	<h3>회원 탈퇴</h3>

	<form action="deleteOk.jsp" method="post" onsubmit="return check()" name="delform">
	
	<h5>비밀번호를 입력하세요 <input type="password" name="pw"/></h5>
	
	<input type="submit" value="회원탈퇴"/>
	<input type="button" value="메인으로 돌아가기" onclick="main.jsp"/>
	
	</form>
</div>
    
</body>
</html>