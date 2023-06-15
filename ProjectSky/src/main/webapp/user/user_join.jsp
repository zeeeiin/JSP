<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- header.jsp --%>

<meta charset="UTF-8">
<title>skyblue in your eyes</title>



<script>
  //id 중복체크
  function idcheck() { 
    window.open('idCheck.jsp', 'IDCheck', 'width=400,height=300');
  }  
   

</script>

<section>

	<div align="center"></br></br>
	
		<h3>skyblue in your eyes  회원 가입</h3></br></br>
		
		<span size="2" style="color: gray; ">* 은 필수입력 사항 입니다.</span></br></br>
		
		<form action="joinForm.user" method="post" name="userInfo" onsubmit="return checkValue()">

			<table border="1">

				<!-- 필수입력사항 -->	
				<tr>
					<td>*아이디</td> <!-- 아이디 중복확인 넣어야함 -->
					<td><input type="text" name="id" required="required" pattern="\w{5,}" onkeydown="inputIdChk()" maxlength="20" placeholder="영문 5글자 이상 "></td>
					<td><input type="button" name="id중복확인" value="중복확인" onclick="idcheck();" ></td>
					<!-- id 중복 체크 여부 -->
					<td><input type="hidden" name="idDuplication" value="idUncheck"></td> <!--  value가 idUncheck 이면 중복체크를 하지 않은 것 -->
				</tr>			
				<tr>
					<td>*비밀번호</td>
					<td><input type="password" name="pw" required="required" pattern="\w{6,}" placeholder="영문숫자조합 4자리 이상"></td>
				</tr>
				<tr>	
					<td>*비밀번호 확인 </td>					
					<td><input type="password" name="repw" required="required" placeholder="비밀번호를 재입력하세요"></td>
				</tr>			
				<tr>
					<td>*닉네임</td> <!-- 닉네임 중복확인 넣어야함 -->
					<td><input type="text" name="name" required="required" ></td>
				</tr>
			
				<tr>
					<td>*성별</td>
					<td>
						<input type="radio" name="gender" value="M">남자 
						<input type="radio" name="gender" value="F" checked="checked">여자 
					</td>
				</tr>	
				
				
				<!-- 선택입력사항 -->	
					
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" placeholder="skyblue_eyes@gmail.com" ></td>
					<!-- <td><input type="button" value="Email 중복확인" onclick="emailCheck()"></td> -->
				</tr>
			
			</table>
			
				
			<div style="color: skyblue;">${msg }</div></br>			
				
			<input type="submit" value="가입하기" style="background-color: skyblue; color: white; border-color: white;">
			<input type="reset" value="입력초기화"><br>	<br></br>			
			<a href="/">메인 페이지로 돌아가기</a> <!-- 버튼 or 링크 고민.. 인덱스 주소로 입력 .user or .jsp or 메소드 ? -->
			
		</form>
		
	</div>
</section>

<%-- footer.jsp --%>
