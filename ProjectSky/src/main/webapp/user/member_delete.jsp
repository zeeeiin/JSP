<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<meta charset="UTF-8">
<title>회원탈퇴</title>

<script language="javascript">

	function check(){
		if(!document.delform.pw.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			return false;
		}		
	}

</script>


<div style="text-align: center">

	<h3 style="font-weight: bold; font-size: 18px;">회원 탈퇴</h3><br><br>

	<form action="member_delete_ch.jsp" method="post" onsubmit="return check()" name="delform">
	
	<h5 style="font-size: 14px;">비밀번호를 입력하세요 <input type="password" name="pw"/></h5><br><br>
	
	<input type="submit" value="회원탈퇴" onclick="member_delete_result.jsp"/>
	<br><br>
	<a href="../main.jsp" style="font-size: 13px;">메인 페이지로 돌아가기</a> <!-- 버튼 or 링크 고민.. 인덱스 주소로 입력 .member or .jsp or 메소드 ? -->
			
	</form>
	
</div>
    


<%@ include file="../include/footer.jsp" %> 