package kk.kk.kk;

import java.util.Scanner;
import java.sql.*;

public class JDBCpstmtInsert {

	public static void main(String[] args) {

      String dbType = "com.mysql.cj.jdbc.Driver";
      String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
      String dbId = "root";
      String dbPw = "mysql";
      
      
      try {
    	  
    	  Scanner scan = new Scanner(System.in);
    	  System.out.println("추가할 자료의 아이디를 입력해주세요");
    	  String uId = scan.nextLine();
    	  System.out.println("추가할 자료의 이름을 입력해주세요");
    	  String uName = scan.nextLine();
    	  System.out.println("추가할 자료의 비밀번호를 입력해주세요");
    	  String uPw = scan.nextLine();
    	  System.out.println("추가할 자료의 이메일을 입력해주세요");
    	  String uEmail = scan.nextLine();
    	  
    	  Class.forName(dbType);
    	  Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	  String sql ="INSERT INTO userinfo VALUES(?, ?, ?, ?)";
    	  PreparedStatement psmt = con.prepareStatement(sql);
    	  psmt.setString(1, uName);
    	  psmt.setString(2, uId);
    	  psmt.setString(3, uPw);
    	  psmt.setString(4, uEmail);
    	  
    	  psmt.executeUpdate();
    	  
      }catch(Exception e) {
    	  e.printStackTrace();
      }
	}

}
