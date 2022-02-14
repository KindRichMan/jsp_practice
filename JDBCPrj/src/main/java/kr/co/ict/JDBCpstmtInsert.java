package kr.co.ict;

import java.util.Scanner;
import java.sql.*;
public class JDBCpstmtInsert {

	public static void main(String[] args) {
		// INSERT 구문을 작성해주세요.
		// 변수로 접속정보를 관리합니다.
		
	 String dbType = "com.mysql.cj.jdbc.Driver"; 
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		
		try {
			// 0. Scanner로 INSERT에 필요한 정보들 입력받기
			Scanner scan = new Scanner(System.in);
			System.out.println("추가할 정보의 이름을 입력해주세요.");
			String uName = scan.nextLine();
			System.out.println("추가할 정보의 아이디 입력해주세요.");
			String uId = scan.nextLine();
			System.out.println("추가할 정보의 비밀번호를 입력해주세요.");
			String uPw = scan.nextLine();
			System.out.println("추가할 정보의 이메일을 입력해주세요.");
			String uEmail = scan.nextLine();
			
			// 1. 접속정보 정의 및 DB 연결하기
			 Class.forName(dbType);
			 Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
			// 2. 쿼리문 생성
			// INSERT INTO 구문의 경우는 VALUE(?,?,?,?)와 같이 갑이 들어갈 자리를
			// ,로 구분하는 부분까지 문자열로 구현해주셔야 합니다.
			String sql = "INSERT INTO userinfo VALUE(?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			 
			// 3. pstmt 생성 및 ?에 변수 매칭
			pstmt.setString(1, uName);
			pstmt.setString(2, uId);
			pstmt.setString(3, uPw);
			pstmt.setString(4, uEmail);
			
		// 4. 실행	
			pstmt.executeUpdate();
					
	}catch(Exception e) {
			e.printStackTrace();
		}

	}

}

			
	
			
	