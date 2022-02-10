package kr.co.ict;

import java.util.Scanner;
import java.sql.*;

public class JDBCInsert {

	public static void main(String[] args) {
		
		try {
			
		
		Scanner scan = new Scanner(System.in);
		System.out.println("추가할 아이디를 입력해주세요.");
		String uId = scan.nextLine();
		System.out.println("추가할 비밀번호를 입력해주세요.");
		String uPw = scan.nextLine();
		System.out.println("추가할 이름을 입력해주세요.");
		String uName = scan.nextLine();
		System.out.println("추가할 이메일를 입력해주세요.");
		String uEmail = scan.nextLine();
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jdbcprac11",
				"root","mysql");
		Statement stmt = con.createStatement();
		System.out.println("실행할 쿼리문");
		System.out.println("INSERT INTO userinfo VALUES('" + uId + "', '" +uPw + "', '" + uName + "', '" + uEmail + "')");
		
		stmt.executeUpdate("INSERT INTO userinfo VALUES('" + uId + "', '" +
		       uPw + "', '" + uName + "', '" + uEmail + "')");
		
	
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
