<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
   
    String dbType= "com.mysql.cj.jdbc.Driver";
     String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
     String dbId = "root";
     String dbPw = "mysql";
   
     try{
    	 
    	 Class.forName(dbType);
    	 Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	 String sql ="DELETE FROM userinfo WHERE uid=? ";
    	
    	 PreparedStatement pstmt = con.prepareStatement(sql);
    	
    	 pstmt.setString(1,sId);
    	
    	 pstmt.executeUpdate();
    	 
     }catch(Exception e){
    	 e.printStackTrace();
     }finally{
    	 session.invalidate();
    	 //response.sendRedirect("login_form.jsp");
     }
     
     
      
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1><%=sId %>계정 삭제가 완료되었습니다.</h1>
 <a href="join_form.jsp">메인화면으로 돌아가기</a>
</body>
</html>