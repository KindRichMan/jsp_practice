<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String fId = request.getParameter("id");
    String fPw = request.getParameter("pw");
    String fName = request.getParameter("name");
    String fEmail = request.getParameter("email");
    
    String dbType = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId ="root";
    String dbPw ="mysql";
   
    
    Connection con = null;
    PreparedStatement pstmt = null;
    try{
    	
    	Class.forName(dbType);
    		con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	String sql = "INSERT INTO userinfo VALUES (?,?,?,?)";
    	 pstmt = con.prepareStatement(sql);
    	 
    	  pstmt.setString(1, fId);
    	 pstmt.setString(2, fPw);
    	 pstmt.setString(3, fName);
    	 pstmt.setString(4, fEmail);
    	 pstmt.executeUpdate();
    	 
    	 

    	
    }catch(Exception e){
    	e.printStackTrace();
    }
               out.println("회원가입이 완료되었습니다.");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>회원가입이 완료되었습니다.</h1>
   <a href="login_welcome.jsp">홈으로 돌아가기</a>
</body>
</html>