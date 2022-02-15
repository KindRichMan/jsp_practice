<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     request.setCharacterEncoding("utf-8");
    String fId = request.getParameter("fid");
    String fPw = request.getParameter("fpw");
    String fName = request.getParameter("fname");
    String fEmail = request.getParameter("femail");
    
    
   String dbType = "com.mysql.cj.jdbc.Driver";
   String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
   String dbId = "root";
   String dbPw = "mysql";
    
      try{
    	  Class.forName(dbType);
    	  Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	  
    	  String sql ="INSERT INTO userinfo VALUE (?,?,?,?)";
    	  PreparedStatement pstmt = con.prepareStatement(sql);
    	  
    	  pstmt.setString(1, fName);
    	  pstmt.setString(2, fId);
    	  pstmt.setString(3, fPw);
    	  pstmt.setString(4, fEmail);
    	  
    	  pstmt.executeUpdate();
    	  
    	  con.close();
    	  pstmt.close();
    	  
      }catch(Exception e){
    	  e.printStackTrace();
      }
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <a href="login_form.jsp">로그인창으로 이동하기</a>
</body>
</html>