package com.sky.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.sky.user.model.UserDAO;
import com.sky.user.model.UserVO;

public class UserDAO {

	private static UserDAO instance = new UserDAO();
	
	private UserDAO() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
		}		
	}	
	
	public static UserDAO getInstance() {
		return instance;
	}	
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "JSP";
	private String upw = "JSP";	
	
	
	//id중복체크
	public int idCheck(String id) {
		
		int result = 1;
		
		String sql = "select * from users where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, id);			
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return result; 
	} //idCheck end


	//회원가입
	public void join(UserVO vo) {
		
		String sql = "insert into users(id, pw, name, email, gender) values(?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId() );
			pstmt.setString(2, vo.getPw() );
			pstmt.setString(3, vo.getName() );
			pstmt.setString(4, vo.getEmail() );
			pstmt.setString(5, vo.getGender() );
			
			pstmt.executeUpdate(); //성공시 1, 실패시 0
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
			}
		}
	} //join end
	
	
	//닉네임 체크
	public int nameCheck(String name) {
		
		int result = 1;
		
		String sql = "select * from users where name = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, name);			
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return result; 
		
	} // nameCheck end
	
	
	
	//로그인
	public UserVO login(String id, String pw) {
		
		//로그인 성공이면 객체가 반환, 로그인 실패면 null값이 반환
		UserVO vo = null;
		
		String sql = "select * from users where id = ? and pw = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				vo = new UserVO(id2, null, name, email, gender, regdate);
			} 
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return vo;
	} //login end
	
	//회원정보 조회
	public UserVO getInfo(String id) {
		
		UserVO vo =null;
		
		String sql = "select * from users where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //id
			
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) {//id는 pk라서 1행
				
				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender =rs.getString("gender");
				
				vo = new UserVO(id2, null, name, email, gender, null);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		return vo;
	} //getInfo end
	
	//회원정보 수정
	public int updateInfo(UserVO vo) {
		
		int result = 0;
		
		String sql = "update users "
					+"set pw = ?, name =?, email = ?, gender = ? where id = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPw() );
			pstmt.setString(2, vo.getName() );
			pstmt.setString(3, vo.getEmail() );
			pstmt.setString(4, vo.getGender() );
			pstmt.setString(5, vo.getId());
			
			result = pstmt.executeUpdate(); //성공 1, 실패 0
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
			}
		}
		
		return result;
	} //updateInfo end

	//회원 삭제
	public int deleteInfo(String name, String pw) { //삭제시 아이디 or 닉네임? UserVO vo or String name
		
		int result = 0;
		
		//삭제시 아이디 or 닉네임?
		String sql= "delete from user where name=? and pw=?"; //name?
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);	
			pstmt.setString(2, pw);	
			rs = pstmt.executeQuery();
			
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {		
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
		return result;
	}

	
	
	
	
	

}
