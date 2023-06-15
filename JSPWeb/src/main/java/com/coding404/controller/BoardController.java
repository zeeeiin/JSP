package com.coding404.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coding404.board.model.BoardVO;
import com.coding404.board.service.BoardService;
import com.coding404.board.service.BoardServiceImpl;

@WebServlet("*.Board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public BoardController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글처리
		request.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length() );

		System.out.println(command);
		
		//게시글 서비스 선언
		BoardService service = new BoardServiceImpl();
		
		
		//글쓰기 화면에 처리 - forward 방식으로 나가게 해줄 것.
		if( command.equals("/board/board_write.board")) { //board폴더 안에 들어있으니까..
			
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
		//목록 화면에 처리 boardlist
		} else if( command.equals("/board/board_list.board")) {
			
			//목록을 가지고 나옴 (중요!)
			List<BoardVO> list = service.getList(request, response); //반환은 리스트
			
			//가지고 나온 목록을 list라는 이름으로 저장
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("board_list.jsp").forward(request, response);
		
		//등록 작업 - 분리작업?
		} else if( command.equals("/board/registForm.board")) {
			
			service.regist(request, response);
			
			//1. forward
			//2. redirect
			
			//request.getRequestDispatcher("board_list.jsp").forward(request, response);
			response.sendRedirect("board_list.board");		
			
			
		//상세화면	
		} else if( command.equals("/board/board_content.board")) {

			BoardVO vo = service.getContent(request, response);
			request.setAttribute("vo", vo);
			//여기서 forward로 나갈 것
			request.getRequestDispatcher("board_content.jsp").forward(request, response);
			
		//수정화면	
		} else if( command.equals("/board/board_modify.board")) {
			BoardVO vo = service.getContent(request, response);
			request.setAttribute("vo", vo);
	
			request.getRequestDispatcher("board_modify.jsp").forward(request, response);
			
		//글 수정	
		} else if( command.equals("/board/board_update.board")) {
			//수정 후 경로는 아직 미정.
			//업데이트 찾으러 가기 -> 서비스인터페이스에서 void로..
			service.update(request, response); //데이터 반환이 없어서 이렇게 적고 끝.
			//서비스imp로 가서 연결해주고
			
			String bno = request.getParameter("bno");
			//상세페이지로 이동
			response.sendRedirect("board_content.board?bno=" + bno);
		}
		//글 삭제 ...
		
		
	}
}