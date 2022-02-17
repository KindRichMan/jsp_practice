<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
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
     String dbId = "root";
     String dbPw = "mysql";
     
     try{
    	 Class.forName(dbType);
    	 Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	 
    	 String sql = "INSERT INTO userinfo VALUE(?,?,?,?)";
    	 PreparedStatement pstmt = con.prepareStatement(sql);
    	 
    	 pstmt.setString(1, fId);
    	 pstmt.setString(2, fPw);
    	 pstmt.setString(3, fName);
    	 pstmt.setString(4, fEmail);
    	 
    	 pstmt.executeUpdate();
    	 
    	 con.close();
    	 pstmt.close();
     }catch(Exception e){
    	 e.printStackTrace();
     }finally{
    	 out.println("회원가입이 완료되었습니다.");
     }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="login_form.jsp">로그인 창으로 이동하기</a>
</body>
</html>