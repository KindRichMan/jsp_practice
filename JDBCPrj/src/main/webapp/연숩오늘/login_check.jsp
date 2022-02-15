<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String fId = request.getParameter("fid");
    String fPw = request.getParameter("fpw");
    System.out.println("폼에서 날린 아이디: "+ fId );
    System.out.println("폼에서 날린 비밀번호: "+ fPw);
    
    
         String dbType = "com.mysql.cj.jdbc.Driver";
         String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
         String dbUid = "root";
         String dbUpw = "mysql";
         
         try{
        	 Class.forName(dbType);
        	 Connection con = DriverManager.getConnection(dbUrl, dbUid, dbUpw);
        	 
        	 String sql = "SELECT * FROM userinfo WHERE uid=?";
        	 PreparedStatement pstmt = con.prepareStatement(sql);
        	 pstmt.setString(1, fId);
        	
        	 
        	 ResultSet rs = pstmt.executeQuery();
        	 if(rs.next()){
        		 String uId = rs.getString("uid");
        		 String uPw = rs.getString("upw");
        		 System.out.println("웹에서 날린 아이디" + uId );
        		 System.out.println("웹에서 날린 아이디" + uPw);
        		 if(fId.equals(uId) && fPw.equals(uPw)){
        			 out.println("<h1>" + fId +"님 로그인에 성공하셨습니다.</h1>");
        			 session.setAttribute("session_id", uId);
        			 session.setAttribute("session_uPw", uPw);
        			
        			 response.sendRedirect("login_welcome.jsp");
        		 }else {
        			 out.println("<h1>비밀번호가 틀렸습니다.다시 시도해보세요.</h1>");
        		 }
        		 
        	 } else {
        		 out.println("<h1>아이디가 없습니다.다시 시도해보세요.</h1>");
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