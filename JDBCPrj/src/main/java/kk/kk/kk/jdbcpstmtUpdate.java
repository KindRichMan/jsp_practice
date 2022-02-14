package kk.kk.kk;

import java.util.Scanner;
import java.sql.*;

public class jdbcpstmtUpdate {

	public static void main(String[] args) {
		
		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("변경할 자료의 아이디를 입력해주세요.");
			String uId = scan.nextLine();
			System.out.println("변경할 비밀번호입력.");
			String uPw = scan.nextLine();
			System.out.println("변경할 이름 입력.");
			String uName = scan.nextLine();
			System.out.println("변경할 이메일 입력.");
			String uEmail = scan.nextLine();
			
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
			String sql = "UPDATE userinfo SET uname=?, upw=?, uemail=? WHERE uid=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
					
			pstmt.setString(1, uName);
			pstmt.setString(2, uPw);
			pstmt.setString(3, uEmail);
			pstmt.setString(4, uId);
			
			pstmt.executeUpdate();
			
			con.close();
			scan.close();
			pstmt.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
		
		
	}

	}}
