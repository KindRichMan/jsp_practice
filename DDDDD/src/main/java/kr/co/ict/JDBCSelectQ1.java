package kr.co.ict;

import java.util.Scanner;
import java.sql.*;

public class JDBCSelectQ1 {

	public static void main(String[] args) {


		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("조회할 유저의 아이디를 입력해주세요.");
			String uId = scan.nextLine();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jdbcprac11","root","mysql");
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo WHERE uid='" + uId + "'");
			if(rs.next()){
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
			};
			
			
			
		}catch(Exception e) {
			
		}

	}

}
