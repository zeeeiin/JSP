<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
       
<%
	//리퀘스트로 값을 받고 센드 리다이렉트로 화면 넘겨줄 것.. 사용할 건 아닌 페이지임
    
	request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    //값을 받아오기
    String id_check = request.getParameter("id_check"); //아이디 기억하기
    
    //로그인 버튼을 눌렀는데 값이 없다면, 아이디기억하기 체크 안 한 경우 매개변수 값이 null이 된다.
  
    //로그인을 실패하든 안하든 간에..쿠키 생성
    //아이디 기억하기
    if(id_check != null){
    	Cookie coo = new Cookie("id_check", id);
    	coo.setMaxAge(1800); //시간 설정을 안하면 아마 멈출 것. 설정 안하면 기본값이 아마 0일 것이다.
    	response.addCookie(coo);
    }    
    
    //id aaa123 pw 1234라면 로그인 성공이라고 간주.    
    if( id.equals("aaa123") && pw.equals("1234")){
    	//성공했을 때 쿠키를 만들어주고 싶다면 이 위치에서 만들면 된다.    	
    	
    	//로그인 아이디를 저장하는 쿠키
    	Cookie coo = new Cookie("user_id", id);//id를 저장하겠다면 사용자가 입력한 값이 들어가야한다.
    	//"aaa123" 를 값으로 입력해도 되는건 지금만 가능..(모든 아이디가 "aaa123"라는 전제하에 가능한 것이어서.)
    	coo.setMaxAge(1800); //30분
    	response.addCookie(coo);  	
    	    	
    	//성공한 경우 3번째 페이지로 넘어가기
    	response.sendRedirect("cookie_ex01_welcome.jsp");
    	
    } else { //실패하면 다시 원본 페이지로 넘어가기    	
    	response.sendRedirect("cookie_ex01.jsp");    	
    }
        
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>