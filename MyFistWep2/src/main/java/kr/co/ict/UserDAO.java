package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

// DAO 클래스는 DB연동을 전담하여 처리합니다.
public class UserDAO {
	
	// DB접속에 필요한 변수들을 아래에 선언합니다.
			/*		private String dbType = "com.mysql.cj.jdbc.Driver";
					private String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
					private String dbId = "root";
				    private String dbPw = "mysql";
				    */   //servers 내부에 context.xml에 이미 만들어놓음    
	private DataSource ds;

	// 생성자를 이용해 생성할 때 자동으로 Class.forName()을 실행하게 만듭니다.
	// 어떤 쿼리문을 실행하더라도
//	public UserDAO() {
//		try {
//			Class.forName(dbType);
//		
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	
	//싱글턴 패턴처리
	//싱글턴은 요청시마다 DAO를 매번 새로 생성하지않고, 먼저 하나를 생성해둔 다음
	// 사용자가 요청때는 이미 생성된 DAO의 주소값만 공유해서
	// DAO생성에 필요한 시간을 정략하기 위해 사용합니다.
	// 1. 생성자는 private으로 처리해 외부에서 생성명령을 없기 처리 합니다.
	
	private static UserDAO dao = new UserDAO();
	
	private UserDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static UserDAO getInstance() {
		if(dao == null) {
			dao = new UserDAO();
		}
		return dao;
	}


      // user_list2.jsp의 코드 로직을 대체해보겠습니다.
	  // user_list2.jsp에서 전체 유저 목록을 필요로 하기 때문에
	  // 실행 결과로 List<UserVO>를 리턴해줘야 합니다.
	  // 역시 SELECT구문을 실행할때에는 리턴자료가 필요하고
	  // INSERT, DELETE, UPDATE구문을 실행할때는 리턴자료가 void입니다.
  public List<UserVO> getAllUserList(){


	  
	  
	  //login_update.jsp의 경우 로그인한 유저 한 명의 데이터만 DB에서 얻어옵니다.
	  // 따라서, 그 한 명의 유저 데이터만을 이용해 SELECT구문을 써야합니다.
	  // login_update.jsp 상단의 sId 변수에 들어있는 유저명을 이요해 유저 데이터를 얻어옵니다.
	
	  
	 // Connection, PreparedStatement, ResultSet을 선언합니다.
	  Connection con =null;
	  PreparedStatement pstmt = null;
	  ResultSet rs = null;
	  // try블럭 진입 전에 ArrayList 선언
	  List<UserVO> userList = new ArrayList<>();
	  
	  try {
	  // Connection, PreparedStatement, ResultSet을 선언합니다.
	  con = ds.getConnection();
  	//3. SELECT * FROM userinfo
  	 String sql = "SELECT * FROM userinfo";
  	 
  	 pstmt = con.prepareStatement(sql);
  	
  	 rs = pstmt.executeQuery(); 
	  
	  // UserVO ArrayList에 rs에 든 모든 자료를 저장해주세요.
  	 
  	 while(rs.next()){
		 
		 String uName = rs.getString("uname");
		 String uId = rs.getString("uid");
		 String uPw = rs.getString("upw");
		 String uEmail = rs.getString("uemail");
		 
		 UserVO userDate = new UserVO(uName, uId, uPw, uEmail);
		 userList.add(userDate);
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
	  return userList;
  }



public UserVO getUserDate(String sId){
	  // 접속로직은 getAllUserList()와 큰 차이가 없고 쿼리문만 좀 다릅니다.
	  
	  // 1. Connection, PreparedStatemtnt,ResultSet 변수 선언만 해주세요.
	  // UserVO 변수 선언
	
	   Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   UserVO user =null ;
	   
	   // try블럭 외부에서 써야하는 (Connection,PreparedStatment, ResultSet은 finally블럭에서도 사용)
	   // (UserVO는 return구문에서 사용)것들을 try진입 전에 먼저 선언합니다.
	try {
		
		
		 con = ds.getConnection();
		String sql ="SELECT *FROM userinfo WHERE uid=?";
		 pstmt=con.prepareStatement(sql);
		 pstmt.setString(1,sId);
		 rs = pstmt.executeQuery();
		
		 if(rs.next()) {
			 String uName = rs.getString("uname");
			 String uId = rs.getString("uid");
			 String uPw = rs.getString("upw");
			 String uEmail = rs.getString("uemail");
			 user = new UserVO(uName,uId,uPw,uEmail);
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
	
	 return user;//DB에서 UserVO에 데이터를 받아주신 다음 null대신 받아온 데이터를 리턴하세요.
	 }	  

      public void UpdateCheck(String uId, String uPw, String uName, String uEmail) {
    	  
    	  Connection con = null;
    	  PreparedStatement pstmt = null;
    	  
    	    
    	  try {
    		  
    		  con = ds.getConnection();
    		  String sql="Update  userinfo SET uname=?, upw=?,uemail=? WHERE uid=? ";
    		     pstmt = con.prepareStatement(sql);
    		     pstmt.setString (1,uName);
    			 pstmt.setString (2,uPw);
    			 pstmt.setString (3,uEmail);
    			 pstmt.setString (4,uId);
    			  
    			  pstmt.executeUpdate();
    		  
    		    }catch(Exception e) {
    		  e.printStackTrace();
    		  
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
      
      public void deleteUser(String sId) {
    	  
    	  Connection con = null; 
    	  PreparedStatement pstmt= null ;
    	  
    	  try {
    		  
    		  con = ds.getConnection();
    		  String sql = "DELETE FROM userinfo WHERE uid=?";
    		  pstmt = con.prepareStatement(sql);
    		  pstmt.setString(1, sId);
    		  
    		  pstmt.executeUpdate();
    		  
    	  }catch(Exception e){
    		  e.printStackTrace();
    	  }finally {
    		  
    	  }
    	  
      }
      
      public void insertUser(String uName,String uId,String uPw,String uEmail){
    	  PreparedStatement pstmt = null ;
    	  Connection con = null;
    	  try {
    		  
    		  con = ds.getConnection();
    		  String sql = "INSERT INTO userinfo VALUE(?,?,?,?)";
    		  pstmt= con.prepareStatement(sql);
    		  pstmt.setString(1,uName);
    		  pstmt.setString(2,uId);
    		  pstmt.setString(3,uPw);
    		  pstmt.setString(4,uEmail);
    		  
    		  pstmt.executeUpdate();
    		   
    		  
    		  
    	  }catch(Exception e) {
    		  
    	  }finally {
    		  
    	  }
      }
} 
	
	 
    	
        
	
	   
	   
	
    			
    		 
    		  
    		  
    		  
    	
      
	


		
	  
	   
	  
	
	 
	
	
	 
	  