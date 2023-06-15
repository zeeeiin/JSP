<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>EL태그는 표현식을 대체해서 사용한다.</h3>
	
	값을 출력하고 싶으면 
	<%="honghong" %><br/> 이렇게 표현식으로 나타낼 수 있는데
	<br/> <br/> 
	EL태그로 나타내면 이렇게 된다. <br/> 
	괄호안은 ', ""둘 다 가능한데 가능하면 큰 따옴표로 표시한다.<br/> 
	
	${"honghong"}<br/><br/> 
	
	연산자<br/> <br/> 
	${ 1 + 2 }<br/> <br/> 	
	${ 1 > 2 }<br/> <br/> 
	${ 1 == 2 }<br/> <br/> <br/> 
	삼항연산식(문자열이라도 ==으로 비교 가능)<br/> <br/> 
	${'a' == 'a' ? '같음' : '다름' }<br/> <br/> 
	${ 1 < 2 && 1 > 2 }<br/> <br/> 
	${ 1 < 2 || 1 > 2 }<br/> <br/> 
	${ !false }<br/> not false 라서 true <br/> <br/> 
	
	<hr/>
	
	<h3>EL태그만의 연산자</h3>
	<br/> eq = equals <br/> 
	${'a' eq 'a' ? '같음' : '다름'}<br/> 
	${ 1 < 2 and 1 > 2 }<br/> 
	${ 1 < 2 or 1 > 2 }<br/>
	${ not false }<br/><br/> 	
	${ 1 gt 2 }<br/> <!-- 검색해서 확인 -->
	-> 우항보다 좌항이 크면 true를 반환한다.(대소비교가 직관적이진 않음)<br/> <br/> 
	

</body>
</html>


