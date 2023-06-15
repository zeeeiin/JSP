<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//실행될 때마다 랜덤한 로또번호를 저장하고 출력해주는 프로그램 코드를 작성해보시오.
	//방법은 자유.
	//중복값이 들어가지 않아서 좋다.	
	//<br/>랜덤한 로또번호 프로그램<br/><br/>
	
	Set<Integer> set = new HashSet<>();
	Random ran = new Random();
	
	//size 확인
	while(set.size() < 6) {
		
		//add함수 이용
		set.add( ran.nextInt(45) + 1 );
	}


%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	금주의 로또번호 : <%= set.toString()  %>
	
	<%//set 요소를 하나씩 빼서 a에 담아준다.%>
	<% for(int a : set) {%>
		<%=a %>
	<% } %> 
	
	%>
	
	

</body>
</html>