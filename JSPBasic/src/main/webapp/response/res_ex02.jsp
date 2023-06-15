<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
	
	/* css 문법*/
	body {
		padding : 0;
		margin: 0;
	}
	.wrap {
		display: flex;
		justify-content: center;
		align-content: center;
		height: 100vh;
	}
	
	.btn{
		width: 100%;
		background: skyblue; 
		color: #fff;
		font-weight: 900;
		border: none;
		padding: 10px 5px;
	}
	
	
	</style>

</head>
<body>

	<!-- 
	디자인을 할 때,
	인라인 스타일 시트 style 속성을 사용해서 태그에 디자인을 주는 방법과
	내부 스타일 시트 태그에 class 속성을 생성하고 head 태그에서 디자인을 태그에 적용하는 방법이 있다.
	css 파일을 만드는 방법도 있음
	
	id속성은 화면에서 유니크해야할 때 사용한다. id는 #으로 접근해야한다.
	class 속성을 동일한 이름을 사용해도 된다. class는 .으로 접근해야한다.
	
	 -->

	<div class= "wrap">
		<form action="res_ex02_result.jsp" method="post" class="box">
		
			<h3 style="color: skyblue; text-align: center;">로그인 폼</h3>
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="password" name="pw" placeholder="비밀번호"><br>
			<input type="submit" value="로그인" class="btn">
			
		</form>	
	</div>

</body>
</html>