package com.sky.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sky.model.UserVO;

public interface UserService {

	int join(HttpServletRequest request, HttpServletResponse response);
	int nameCheck(HttpServletRequest request, HttpServletResponse response);
	UserVO login(HttpServletRequest request, HttpServletResponse response);
	UserVO getInfo(HttpServletRequest request, HttpServletResponse response);
	int updateInfo(HttpServletRequest request, HttpServletResponse response);
	int deleteInfo(HttpServletRequest request, HttpServletResponse response);

}
