package com.coding404.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coding404.user.model.UserVO;

public interface UserService {

	//추상메서드 선언 - 반환과 매개변수를 내가 결정.
	//매개변수 통일 시키기 req,res를 통째로 받을 수 있게!
	
	int join(HttpServletRequest request, HttpServletResponse ersponse);
	UserVO login(HttpServletRequest request, HttpServletResponse ersponse);
	UserVO getInfo(HttpServletRequest request, HttpServletResponse ersponse);
	
	//매개변수는 똑같이.. 회원 정보 수정
	int updateInfo(HttpServletRequest request, HttpServletResponse ersponse);
	
}
