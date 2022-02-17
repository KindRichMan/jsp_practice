<%@page import="kr.co.ict.UserDAOO"%>
<%@page import="kr.co.ict.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 아까 발생했던 rs.close() 실행 문제로 인해
    // DB에 있는 자료를 꺼냈을때, 곧바로 jsva 데이터로 받아오는 작업을 수행한 다음
    // rs.close()를 하면 문제가 없습니다.
    // 따라서 SELECT 구문의 결과(SQL데이터)를 담을 클래스가 필요하고,
    // 이를 VO(Value Object)라고 부릅니다.
    // VO는 클래스이기 떄문에 src/main/java에 클래스를 선언 및 정의합니다.
    // userVO.class 를 만들어 보겠습니다.
    
    
 /*   
   // 1. DB접속 변수 생성
     
   String dbType = "com.mysql.cj.jdbc.Driver";
    String dbUrl="jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId="root";
    String dbPw= "mysql";
    Connection con= null;
    ResultSet rs = null;
    PreparedStatement pstmt = null;
    
    List<UserVO> userList = new ArrayList<>();
    try{
    	
    	Class.forName(dbType);
    	
    	con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	String sql = "SELECT *FROM userinfo";
    	pstmt = con.prepareStatement(sql);
    	rs = pstmt.executeQuery();
    	
    	while(rs.next()){
    		// 1. ResultSet에서 데이터 가져오기
    		String uName = rs.getString("uname");
    		String uId = rs.getString("uid");
    		String uPw = rs.getString("upw");
    		String uEmail = rs.getString("uemail");


    		UserVO userDate = new UserVO(uName, uId, uPw, uEmail);
    		userList.add(userDate);
    		
    	}
    	System.out.println(userList);
    	// out.println(userList +"<br/>");
    	
    }catch(Exception e){
       e.printStackTrace();	
    }finally{
    //	con.close();
    //	pstmt.close();
    //	rs.close();
    }
     
    */    UserDAOO daoo = new UserDAOO();
           List<UserVO> userList = daoo.getAllUserList();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
          <table border="1px">
              <tr>
                 <td>유저이름</td>  
                 <td>유저아이디</td>  
                 <td>유저비밀번호</td>  
                 <td>유저이메일</td>  
              </tr>
              <% for(UserVO user:userList){%>
              <tr>
                <td><%=user.getuName() %></td>
                <td><%=user.getuId() %></td>
                <td><%=user.getuPw() %></td>
                <td><%=user.getuEmail() %></td>
              </tr> 
              <%} %>  
          </table>
</body>
</html>