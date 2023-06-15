package com.sky.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.user.model.UserDAO;
import com.sky.user.model.UserVO;

public class UserServiceImpl implements UserService {

	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		
		if(result == 1) { //중복
			return 1;
		} else { //가입처리
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.join(vo);
			
			return 0;
		}		
	}
	

	@Override //닉네임 중복 체크
	public int nameCheck(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		int result2 = dao.nameCheck(name);		
		
		if(result == 1) { //중복
			return 1;
		} else { //가입처리
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.join(vo);
			
			return 0;
		}
		
	}
	
	
	@Override
	public UserVO login(HttpServletRequest reqeust, HttpServletResponse response) {
		
		String id = reqeust.getParameter("id");
		String pw = reqeust.getParameter("pw");
		
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.login(id, pw);
		
		return vo;
	}

	@Override
	public UserVO getInfo(HttpServletRequest reqeust, HttpServletResponse response) {
		
		HttpSession session = reqeust.getSession();
		String id = (String)session.getAttribute("user_id");
		
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.getInfo(id);
		
		return vo;
	}

	@Override
	public int updateInfo(HttpServletRequest reqeust, HttpServletResponse response) {
		
		String id = reqeust.getParameter("id");
		String pw = reqeust.getParameter("pw");
		String name = reqeust.getParameter("name");
		String email = reqeust.getParameter("email");
		String gender = reqeust.getParameter("gender");
		
		UserVO vo = new UserVO(id, pw, name, email, gender, null);

		UserDAO dao = UserDAO.getInstance();
		int result = dao.updateInfo(vo);
		
		return result;
	}


	@Override
	public int deleteInfo(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		
		if(result == 1) { //중복
			return 1;
		} else { //가입처리
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.deleteInfo(vo);
				
		return 0;
	}

}
}
