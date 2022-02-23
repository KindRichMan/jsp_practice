<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    	String sql = "Update userinfo SET upw=?, uname=?, uemail=? WHERE uid=?";
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setString(1, fPw);
    	pstmt.setString(2, fName);
    	pstmt.setString(3, fEmail);
    	pstmt.setString(4, sId);
    	
    	pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
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
        <a><%=sId %>님의 회원정보가 수정되었습니다.</a> 
        <a href="login_welcome.jsp">돌아가기</a>
</body>
</html>