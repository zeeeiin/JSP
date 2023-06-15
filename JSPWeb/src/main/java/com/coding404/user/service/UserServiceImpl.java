package com.coding404.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import com.coding404.user.model.UserDAO;
import com.coding404.user.model.UserVO;

public class UserServiceImpl implements UserService {

	@Override
	public int join(HttpServletRequest request, HttpServletResponse ersponse) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		//아이디 중복검사
		//싱글톤 객체를 얻는 방법
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		
		//System.out.println("결과 : " + result );
		
		if(result == 1) { //중복인 경우
			return 1; //호출한 곳으로 돌려주기
		} else { //가입처리
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.join(vo); //insert메서드는 vo값을 원한다. -> 화면에서 넘어온 값을 줘야하니 vo 생성해주기
			
			return 0; //컨트롤러로 보내줄 것
		}		
		
	}

	@Override
	public UserVO login(HttpServletRequest request, HttpServletResponse ersponse) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//로그인
		UserDAO dao = UserDAO.getInstance(); 
		UserVO vo = dao.login(id, pw);
		
		
		return vo;
	}

	@Override
	public UserVO getInfo(HttpServletRequest request, HttpServletResponse ersponse) {
		
		//회원 아이디 - 회원아이디는 세션에 존재
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user_id");
		
		//dao호출
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.getInfo(id);		
		
		return vo;
	}

	@Override
	public int updateInfo(HttpServletRequest request, HttpServletResponse ersponse) {

		/*
		 * 서비스와 DAO영역을 작성.
		 * 1. 아이디 기반으로 회원정보를 수정한다.
		 * 2. 성공실패 여부를 컨트롤러로 반환받는다.
		 * 3. 수정 성공시에는 mypage로 리다이렉트, 실패시에는 modify로 리다이렉트
		 * 
		 * 리다이렉트 하는 이유-값을 따로가져갈게없기 떄문
		 * 
		 */
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
				
		UserVO vo = new UserVO(null, pw, name, email, gender, null);
		
		//dao객체
		UserDAO dao = UserDAO.getInstance();
		int result = dao.updateInfo(vo);		
		
		
		return 0;
	}

	
	
	
	
	
	
	
	
	
	
	
}
