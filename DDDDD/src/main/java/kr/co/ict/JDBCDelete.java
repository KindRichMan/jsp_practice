package kr.co.ict;

import java.util.Scanner;
import java.sql.*;
public class JDBCDelete {

	public static void main(String[] args) {
		
		try {
			
			Scanner scan = new Scanner(System.in);
			System.out.println("삭제할 아이디를 입력하세요");
			String uId = scan.nextLine();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jdbcprac11",
					    "root","mysql");
			//발송준비
			Statement stmt = con.createStatement();
			//발송
			
			
			System.out.println("실행문 쿠리문");
			System.out.println("DELETE FROM userinfo WHERE uId='" + uId + "'  " );
			
			stmt .executeUpdate("DELETE FROM userinfo WHERE uId='" + uId + "'  " );
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
