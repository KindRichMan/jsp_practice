<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    request.setCharacterEncoding("utf-8");
    
    String fPw = request.getParameter("pw");
    System.out.println(fPw);
    String fName = request.getParameter("name");
    System.out.println(fName);
    String fEmail = request.getParameter("email");
    System.out.println(fEmail);
    
    String sId = (String)session.getAttribute("session_id");
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    }
    String dbType = "com.mysql.cj.jdbc.Driver";
    String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId ="root";
    String dbPw = "mysql";
    
    Connection con = null;
    PreparedStatement pstmt = null;
    try{
    	
    	Class.forName(dbType);
    	con = DriverManager.getConnection(dbUrl,dbId,dbPw);
    	String sql = "UPDATE userinfo SET upw=?,uname=?,uemail=? WHERE uid=?";
    	pstmt=con.prepareStatement(sql);
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
        <h1><%=sId %>님의 회원정보가 수정되었습니다.</h1>
        <a href="login_welcome.jsp">홈으로 돌아가기</a>
</body>
</html>