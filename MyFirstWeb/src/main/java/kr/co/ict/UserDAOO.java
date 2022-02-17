package kr.co.ict;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

 public class UserDAOO {
	 private String dbType = "com.mysql.cj.jdbc.Driver";
	private String dbUrl="jdbc:mysql://localhost:3306/jdbcprac1";
	private String dbId="root";
	private String dbPw= "mysql";
	
	 
	
	
	public UserDAOO() {
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
				 con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		    	String sql = "SELECT *FROM userinfo";
		    	 pstmt = con.prepareStatement(sql);

                 rs = pstmt.executeQuery();
                 
                  while(rs.next()){
                	 String uName = rs.getString("uname");
                	 String uId = rs.getString("uid");
                	 String uPw = rs.getString("upw");
                	 String uEmail = rs.getString("umail");
                	 
                	 UserVO userDate = new UserVO(uName, uId, uPw, uEmail);
                	 
                	    userList.add(userDate);
                 }
		
		       
		}catch(Exception e) {
			e.printStackTrace();
			try {
				
			
			con.close();
			pstmt.close();
			rs.close();
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return userList;
	}

	}
		
		
	
	


