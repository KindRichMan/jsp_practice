package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
   private String dbType ="com.mysql.cj.jdbc.Driver";
   private String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
   private String dbId = "root";
   private String dbPw ="mysql";
   
   
   public UserDAO() {
	   try {
		   Class.forName(dbType);
		   
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
   }
   
   public List<UserVO> getAllUserList(){
	 
	   Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   List<UserVO> userList = new ArrayList<>();
	   
	   try {
		      con = DriverManager.getConnection(dbUrl,dbId,dbPw);
			   String sql = "SELECT * FROM userinfo";
			    pstmt = con.prepareStatement(sql);
			    rs = pstmt.executeQuery();
			   
			    while(rs.next()){
		    		  String uName = rs.getString("uname");
		    		  String uId = rs.getString("uid");
		    		  String uPw = rs.getString("upw");
		    		  String uEmail = rs.getString("uemail");
		    				  
		    		UserVO userData = new UserVO(uName,uId,uPw,uEmail);	
		    		userList.add(userData);
			 
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
		 }finally {
			 
		 }
		   
	   }
	  return userList;
  
   }
   
   
   public UserVO getUserData(String sId) {
	   
	   Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   UserVO user= null;
	   
	   try {
		   Class.forName(dbType);
		        con = DriverManager.getConnection(dbUrl,dbId,dbPw);
			    String sql = "SELECT * FROM userinfo WHERE uid=?";
			    pstmt = con.prepareStatement(sql);
			    pstmt.setString(1,sId);
			    rs = pstmt.executeQuery();
			   
			   if(rs.next()){
		     		  String uName = rs.getString("uname");
		    		  String uId = rs.getString("uid");
		    		  String uPw = rs.getString("upw");
		    		  String uEmail = rs.getString("uemail");
		    		  
		    		  user = new UserVO(uName,uId, uPw, uEmail);
		    		 
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
		 }finally {
			 
		 }
		   
	   }
	  return user;
	  		 
	}		 
	
  
   
    }
   
	   
  


