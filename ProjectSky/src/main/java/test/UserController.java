package com.sky.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.user.model.UserVO;
import com.sky.user.service.UserService;
import com.sky.user.service.UserServiceImpl;


@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public UserController() {
        super();       
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length()  );

		
		UserService service= new UserServiceImpl();
		HttpSession session = request.getSession();
		
		
		if(command.equals("/user/user_join.user")) {
			
			request.getRequestDispatcher("user_join.jsp").forward(request, response);
			
		} else if( command.equals("/user/user_login.user") ) {
			
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		
		//회원가입요청
		} else if(command.equals("/user/joinForm.user")) {
			
			//가입
			int result = service.join(request, response);
			int result2 = service.nameCheck(request, response);
			
			if(result == 1) { //중복
				
				request.setAttribute("msg", "중복된 아이디입니다");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);
			} else { //가입성공
				
				response.sendRedirect("user_login.user");
			}
			
			//닉네임 중복검사
			if(result2 == 1) { //중복
				request.setAttribute("msg", "중복된 닉네임입니다");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);
			} else { //가입성공				
				response.sendRedirect("user_login.user");
			}
		
		
		//로그인
		} else if(command.equals("/user/loginForm.user")) {
			
			UserVO vo = service.login(request, response);
			
			if(vo == null) { //로그인 실패
				
				request.setAttribute("msg", "아이디 비밀번호를 확인하세요");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
				
			} else { //로그인 성공
				//세션에 회원정보 저장 (자바에서 세션얻는 방법)
				
				session.setAttribute("user_id", vo.getId() );
				session.setAttribute("user_name", vo.getName() );
				
				response.sendRedirect("user_mypage.user"); 
			}
			
			
		} else if(command.equals("/user/user_mypage.user")) {
			
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
		
		//로그아웃 - 인증수단 삭제
		} else if(command.equals("/user/user_logout.user")) {
			
			session.invalidate();
			response.sendRedirect("user_login.user");
		
		//정보 수정페이지
		} else if(command.equals("/user/user_modify.user")) {
			
			//회원정보를 가지고 감
			UserVO vo = service.getInfo(request, response);
			request.setAttribute("vo",  vo);
			
			request.getRequestDispatcher("user_modify.jsp").forward(request, response);
			
		//정보 수정
		} else if(command.equals("/user/user_update.user")) {
			
			
			int result = service.updateInfo(request, response);
			
			if(result == 1 ) { //성공(유저닉네임이 변경)
				
				String name = request.getParameter("name");
				session.setAttribute("user_name", name);
				
				//out객체를 이용한 메시지 전달
				response.setContentType("text/html; charset=UTF-8;");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('안녕하세요');");
				out.println("location.href='user_mypage.user'; ");
				out.println("</script>");

			} else { //실패
				response.sendRedirect("user_modify.user");
			}
			
			
		//회원탈퇴	
		} else if(command.equals("/user/user_delete.user")) {
		
			int result = service.deleteInfo(request, response);
			
			if(result == 1) { //성공시 정보 삭제
				
				String name = request.getParameter("name");													
				session.invalidate(); // 세션에 정보삭제
				response.sendRedirect("login.jsp");	
				
			} else { //실패시 마이페이지로 이동
				response.sendRedirect("user_mypage.user");
			}
		}
		
	}


}
