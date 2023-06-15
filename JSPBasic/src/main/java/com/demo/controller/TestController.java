package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. 확장자패턴 .test로 끝나면 전부 다 요청을 붙여준다.
@WebServlet("*.test")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TestController() {
		super();        
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	

		doAction(request, response);
		System.out.println("실행됨");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	//2. get/post 요청을 하나로 모음
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글처리
		request.setCharacterEncoding("ut-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length() );
		
		System.out.println(command);
		
		//3. 요청분기
		
		if( command.equals("/controller/add.test")) {
			//회원추가기능
		} else if( command.equals("/controller/login.test")) {
			//회원로그인기능
		}
		//생략..
		
		
	}

}
