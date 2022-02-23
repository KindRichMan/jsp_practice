<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    String sId = (String)session.getAttribute("session_id");
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    }
    
    String dbType = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId = "root";
    String dbPw = "mysql";
    
    try{
    	
    	Class.forName(dbType);
    	Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
    	String sql = "DELETE FROM userinfo WHERE uid=?";
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setString(1, sId);
    	
    	pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	session.invalidate();
    	
    }
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1><%=sId%>님의 회원탈퇴가 완료 되었습니다.</h1>
    <a href="login_form.jsp">로그인 창으로 돌아가기</a>
</body>
</html>