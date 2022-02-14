package kk.kk.kk;

import java.util.Scanner;
import java.sql.*;

public class jdbcpstmtDelete {

	public static void main(String[] args) {
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		try {
			
		
		
		Scanner scan = new Scanner(System.in);
		System.out.println("삭제할 정보의 아이디를 입력해주세요.");
		String uId = scan.nextLine();
		
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		String sql ="DELETE FROM userinfo WHERE uid=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1, uId);
		
		stmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
