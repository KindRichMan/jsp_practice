<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String fId = request.getParameter("id");
    String fPw = request.getParameter("pw");
    
    String dbType ="com.mysql.cj.jdbc.Driver";
    String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId ="root";
    String dbPw ="mysql";
    
    
    PreparedStatement pstmt = null;
        Connection con = null;
      try{
    	  
    	  Class.forName(dbType);
    	  con=DriverManager.getConnection(dbUrl, dbId, dbPw);
    	  String sql ="SELECT *FROM userinfo WHERE uid=?";
    	   pstmt=con.prepareStatement(sql);
    	   pstmt.setString(1, fId);
    	   ResultSet rs = pstmt.executeQuery();
    	   if(rs.next()){
    		   String uId = rs.getString("uid");
    		   String uPw = rs.getString("upw");
    		  
    		   if(fId.equals(uId) & fPw.equals(uPw)){
    			   out.println("<h1>" + fId +"님 로그인에 성공하셨습니다.<h1>");
    			   session.setAttribute("session_id",uId);
    			   session.setAttribute("session_pw",uPw);
    			   response.sendRedirect("login_welcome.jsp");
    		   }else{
    			   out.println("비밀번호가 틀렸습니다.");
    		   }
    		   
    		 }else{
    			 out.println("아이디가 없습니다.");
    		 }
    	   
    	  
    	 
    	  
    	  
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

</body>
</html>