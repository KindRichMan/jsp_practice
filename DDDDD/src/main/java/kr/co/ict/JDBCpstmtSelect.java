package kr.co.ict;

import java.sql.DriverManager;
import java.util.Scanner;
import java.sql.*;
public class JDBCpstmtSelect {

	public static void main(String[] args) {
	String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql1";
		
		try {
		
			Scanner san = new Scanner(System.in);
			System.out.println("조회하고 싶은 아이디를 입력해주세요");
			String uId = san.nextLine();
			
			Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
			
			String sql ="SELECT * FROM userinfo WHERE uid=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  uId);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}
