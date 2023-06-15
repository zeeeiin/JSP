package com.coding404.board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {

	//싱글톤 형태의 클래스로 생성하는 편이 좋다.
	//1. 나 자신의 객체를 스태틱으로 선언.
	private static BoardDAO instance = new BoardDAO(); //현재 객체 하나

	//2. 직접 생성하지 못하도록 생성자 제한
	private BoardDAO() {		
		//DB접속을 위한 드라이버가 필요하다		
		//Class.forName("오라클 드라이버");

		//생성자에서 드라이버 클래스 호출했다가 ->try 구문으로 넣어줌
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
		}
	}

	//3. getter를 통해서 객체를 반환 - 리턴타입이 BoardDAO
	public static BoardDAO getInstance() { //안에 있는 객체 하나 반환
		return instance;
	}

	//데이터베이스 연결 주소+오라클 커넥터
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "JSP";
	private String upw = "JSP";
	
	
	//글 등록
	public void regist(String writer, String title, String content) {
		//sql문이 들어가야 한다.
		
		String sql = "INSERT INTO BOARD(BNO, WRITER, TITLE, CONTENT) VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer );
			pstmt.setString(2, title );
			pstmt.setString(3, content);

			pstmt.executeUpdate(); //끝
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
			} catch (Exception e2) {
				
			}
		}
		
	}
		
	
	//목록을 조회
	public List<BoardVO> getList(){
		
		List<BoardVO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM BOARD ORDER BY BNO DESC";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
		
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);	//? 가 없기떄문에 pstmt는 여기서 끝			
			rs = pstmt.executeQuery();
			
			/*
			 * 조회된 데이터를 VO에 순서대로 담고 리스트에 추가하는 프로그램 코드
			 * (할 줄 알아야 함...)
			 */
			
			while(rs.next()) {
				
				//1행에 대한 처리
				int bno = rs.getInt("bno");
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String content = rs.getString("content");
				int hit = rs.getInt("hit");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				BoardVO vo = new BoardVO(bno, writer, title, content, hit, regdate);
				
				list.add(vo); //list 추가
				
			}
			
			
		} catch (Exception e) {
			
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				
			}
		}
		
		return list;	
		
	}
	
	
	
	//글 내용을 조회
	public BoardVO getContent(String bno) { //조회할 때 bno가 하나 있어야함.
		
		BoardVO vo = null;
		
		String sql = "select * from board where bno = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;				
		
		try {
			
			//현재 ? 값이 하나 있음
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno); //PK기준의 조회.
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				//vo에 담는 것
				int bno2 = rs.getInt("bno");
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String content = rs.getString("content");
				int hit = rs.getInt("hit");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				vo = new BoardVO(bno2, writer, title, content, hit, regdate);
						
			}			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
				
			}
		}		
		
		return vo;
	}
	
	
	//글 수정 기능
	public void update(String bno,
					   String title,
					   String content) {
		
		String sql = "updqte board set title = ? content = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title );
			pstmt.setString(2, content);
			pstmt.setString(3, bno );

			pstmt.executeUpdate(); //끝.
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {				
			}
		
		}
		
	}

}
