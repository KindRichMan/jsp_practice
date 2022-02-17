<%@page import="com.mysql.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String fPw = request.getParameter("pw");
    String fName = request.getParameter("name");
    String fEmail = request.getParameter("email");
    
    String sId = (String)session.getAttribute("session_id");
    
    String dbType = "com.mysql.cj.jdbc.Driver"; 
    String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1"; 
    String dbId = "root";
    String dbPw = "mysql";
   
    try{
    	
    	Class.forName(dbType);
    	Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	String sql =" UPDATE userinfo SET upw=?, uname=?, uemail=? WHERE uid=?"; 
    	PreparedStatement stamt = con.prepareStatement(sql);
    	stamt.setString(1, fPw);
    	stamt.setString(2, fName);
    	stamt.setString(3, fEmail);
    	stamt.setString(4, sId);
    	
    	stamt.executeUpdate();
    	
     	
    	con.close();
    	stamt.close();
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h1><%=sId %>회원의 정보가 수정되었습니다.</h1>
       <a href="login_welcome.jsp">돌아가기</a>
</body>
</html>