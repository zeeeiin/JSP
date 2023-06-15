package com.coding404.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coding404.board.model.BoardDAO;
import com.coding404.board.model.BoardVO;

public class BoardServiceImpl implements BoardService {

	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) {
		
		//title, writer, content
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.regist(writer, title, content);
		
		
	}

	@Override
	public List<BoardVO> getList(HttpServletRequest request, HttpServletResponse response) {
		
		//컨트롤러와 연결해주기 위해 DAO 객체 생성
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardVO> list = dao.getList(); //호출이 들어감. list 타입으로 가지고 나올 수 있다

		return list;
	}

	@Override
	public BoardVO getContent(HttpServletRequest request, HttpServletResponse response) {
		
		String bno = request.getParameter("bno");
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO vo = dao.getContent(bno);
		
		return vo;
	}

	@Override
	public void update(HttpServletRequest request, HttpServletResponse response) {
		
		String bno = request.getParameter("bno");
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//서비스에서 연결해주기
		BoardDAO dao = BoardDAO.getInstance();
		dao.update(bno, title, content);
	}

}
