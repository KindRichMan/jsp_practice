package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac1",//접속url
					                                        "root", //mysql 아이디
					                                        "mysql"); //mysql 비밀번호
			 
			Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo");
			
		// Scanner를 이용해 uid를 입력받은 다음
		// 방금한 SELECT 구문을 응용해서 
		// WHERE uid = 입력받은 아이디
		// 형식으로 내가 조회한 아이디의 정보만
		// 콘솔에 찍히도록 로직을 작성해주세요.
		Scanner scan = new Scanner(System.in);
		System.out.println("조회할 유저의 아이디를 입력해주세요.");
		String uid = scan.nextLine();
		
	


	  } catch(Exception e ) {
		e.printStackTrace();
	}
	}
}

