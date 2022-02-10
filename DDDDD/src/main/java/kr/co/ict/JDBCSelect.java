package kr.co.ict;
import java.sql.*;

public class JDBCSelect {

	public static void main(String[] args) {
		
		try {
			
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jdbcprac11","root", "mysql");
		
		Statement stmt = con.createStatement();
		
	  ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo");
	  System.out.println(rs);
	  
	   while(rs.next()) {
		   
	   
		  System.out.println(rs.getString("uname"));
		  System.out.println(rs.getString(2));
		  System.out.println(rs.getString(3));
		  System.out.println(rs.getString("uemail"));
		  System.out.println("---------------------");
	  }
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
