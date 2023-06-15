<%@page import="com.demo.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//DB에서 가져나온 값이라고 가정.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	//이제 이 데이터를 3번째 페이지로 가져갈 것. 
	//1페이지에 있던 form의 Parameter 값을 가져가는 게 아니라 이 안에서 처리 된 3가지 값을 가져갈 것.
	//id,pw,name을 setAttribute에 담는게 아니고, bean에 담으면 편리하다.
	
	//member객체를 request에 강제로 저장
	Member member = new Member(id, pw, name);
	
	request.setAttribute("member", member);
	request.getRequestDispatcher("bean_ex01_result.jsp").forward(request, response);
	
	
%>
