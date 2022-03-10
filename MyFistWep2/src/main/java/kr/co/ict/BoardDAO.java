package kr.co.ict;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	
		private DataSource ds;

	
		
		private static BoardDAO dao = new BoardDAO();
		
		private BoardDAO() {
			try {
				Context ct = new InitialContext();
				ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		public static BoardDAO getInstance() {
			if(dao == null) {
				dao = new BoardDAO();
			}
			return dao;
		}

		public List<BoardVO> getAllBoardList(){


			 // Connection, PreparedStatement, ResultSet을 선언합니다.
			  Connection con =null;
			  PreparedStatement pstmt = null;
			  ResultSet rs = null;
			  // try블럭 진입 전에 ArrayList 선언
			  List<BoardVO> BoardList = new ArrayList<>();
			  
			  try {
			  // Connection, PreparedStatement, ResultSet을 선언합니다.
			  con = ds.getConnection();
		  	//3. SELECT * FROM userinfo
		  	 String sql = "SELECT * FROM boardinfo ORDER BY board_num DESC";
		  	 
		  	 pstmt = con.prepareStatement(sql);
		  	
		  	 rs = pstmt.executeQuery(); 
			  
			  // UserVO ArrayList에 rs에 든 모든 자료를 저장해주세요.
		  	 
		  	 while(rs.next()){
				 
		  		 int board_num = rs.getInt("board_num");
				 String title = rs.getString("title");
				 String content = rs.getString("content");
				 String writer = rs.getString("writer");
				 Date bDate = rs.getDate("bdate");
				 Date mDate = rs.getDate("mdate");
				 int hit = rs.getInt("hit");
				 
				 BoardVO boardDate = new BoardVO(board_num, title, content, writer,bDate,mDate,hit);
				 BoardList.add(boardDate);
			 }
		            	
		  	 
			  }catch(Exception e) {
				  e.printStackTrace();
			  }finally {
			   
				  try {
			    	 
			    	 con.close();
				     pstmt.close();
				     rs.close();
				  } catch(SQLException se) {
					  se.printStackTrace();
				  }
				 
		  
			  }
			  return BoardList;
		  }

		
		public void insertBoard(String title, String content, String writer) {
			 
			PreparedStatement pstmt = null ;
	    	  Connection con = null;
	    	  try {
	    		  
	    		  con = ds.getConnection();
	    		  String sql = "INSERT INTO userinfo(title,content,writer) VALUE(?,?,?)";
	    		  
	    		  pstmt= con.prepareStatement(sql);
	    		  pstmt.setString(1,title);
	    		  pstmt.setString(2,content);
	    		  pstmt.setString(3,writer);

	    		  
	    		  pstmt.executeUpdate();
	    		   
	    		  
	    		  
	    	  }catch(Exception e) {
	    		  
	    	  }finally {
	    		  try {
	    			  con.close();
	    			  pstmt.close();
	    		  }catch(Exception e) {
	    			  e.printStackTrace();
	    		  }finally {
	    			  
	    		  }
	    	  
	    }	  
	    	
	      
		}
		public BoardVO getBoardDetail(int board_num) {  
			
		
				   Connection con = null;
				   PreparedStatement pstmt = null;
				   ResultSet rs = null;
				   BoardVO board =null ;
				
				try {
					
					
					 con = ds.getConnection();
					String sql ="SELECT *FROM boardinfo WHERE board_num=?";
					 pstmt=con.prepareStatement(sql);
					 pstmt.setInt(1,board_num);
					
					 rs = pstmt.executeQuery();
					
					 if(rs.next()) {
						 int bNum = rs.getInt("board_num");
						 String title = rs.getString("title");
						 String content = rs.getString("content");
						 String writer = rs.getString("writer");
						 Date bDate = rs.getDate("bdate");
						 Date mDate = rs.getDate("mdate");
						 int hit = rs.getInt("hit");
						 board = new BoardVO(bNum,title,content,writer,bDate,mDate,hit );
					 }
					 
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					try {
						con.close();
						pstmt.close();
						rs.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
				
				 return board;//DB에서 UserVO에 데이터를 받아주신 다음 null대신 받아온 데이터를 리턴하세요.
				 }	  
			
}
	    	  
	      


