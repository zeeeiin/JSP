<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application객체는 session과 사용방법이 동일하다.	
	//application.setAttribute("count", 1);
	
	int count = 0;
	
	//값을 얻을 때 누적하는 기능
	if(session.getAttribute("count") != null ) { //값이 있다면
		count = (int)session.getAttribute("count");//count를 꺼내겠다
		
	}
	
	count++;
	
	//application객체는 session과 사용방법이 동일하다.	
	session.setAttribute("count", count);//값이 누적된다.
	
	//int count = (int)application.getAttribute("count"); //Object 타입이라서 캐스팅 해줘야함
	int total = (int)session.getAttribute("count"); 

%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	결과 : <%=total %>	
	
</body>
</html>