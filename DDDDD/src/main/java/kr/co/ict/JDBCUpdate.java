package kr.co.ict;

import java.sql.*;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		
		String dbType ="com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac11";		
		String dbId = "root";
		String dbPw = "mysql";
		
		
		try{ 
			Scanner scan = new Scanner(System.in);
			System.out.println("변경하고 싶은 계정의 아이디를 입력하세요.");
			String uId = scan.nextLine();
			System.out.println("해당 아이디의 비밀번호를 입력해주세요.");
			String uPw = scan.nextLine();
			System.out.println("해당 아이디의 새로운 이름을 입력해주세요.");
			String uName = scan.nextLine();
			System.out.println("해당 아이디의 새로운 이메일을 입력해주세요.");
			String uEmail = scan.nextLine();
			
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		
		Statement stmt = con.createStatement();
		System.out.println("UPDATE userinfo SET upw='"+ uPw +"',   uname='" + uName +"',  uemail='" + uEmail +
				                                                       "', WHERE uid='"+ uId +"'"  );
		
		stmt.executeUpdate("UPDATE userinfo SET upw='"+ uPw +"',   uname='" + uName +"',  uemail='" + uEmail +
                "' WHERE uid='"+ uId +"'" );
		  
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}
