<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String strcm = request.getParameter("cm");
	String strkg = request.getParameter("kg");
	
	double cm = Double.parseDouble(strcm);
	double kg = Double.parseDouble(strkg);
	
	double BMI =  kg / ( cm/100 * cm/100 );
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름 : <%=name %><br><br>
	신장 : <%=cm %><br><br>
	몸무게 : <%=kg %><br><br>	
	<% if( BMI >= 25 ) { //자바영역%>
			<b>과체중입니다</b> <%//html 영역%>
		<% } else if ( BMI <= 18 ) { %>
			<b>저체중입니다</b>
			<% } else {%>
				<b>정상입니다</b>
				<% } %>

</body>
</html>