<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    if(sId == null ){
    	response.sendRedirect("login_form.jsp");
    }
    
      String dbType ="com.mysql.cj.jdbc.Driver";
      String dbUrl="jdbc:mysql://localhost:3306/jdbcprac1";
      String dbId = "root";
      String dbPw ="mysql";
      
      
      Connection con =null;
      PreparedStatement pstmt = null; 
      ResultSet rs = null; 
      String uName =null;
      String uEmail=null;
      try{
    	  
    	  Class.forName(dbType);
    	  con = DriverManager.getConnection(dbUrl,dbId,dbPw);
    	  String sql ="SELECT *FROM userinfo WHERE uid=?";
    	  pstmt=con.prepareStatement(sql);
    	  pstmt.setString(1, sId);
    	   rs = pstmt.executeQuery();
    	  if(rs.next()){
    		  uName = rs.getString("uname");
    		  uEmail = rs.getString("uemail");
    		  
    	  }
    	  
    	  
      }catch(Exception e){
    	  e.printStackTrace();
      }finally{
    	  con.close();
    	  pstmt.close();
    	  rs.close();
    	  
      }
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h1><%=sId %>계정의 정보를 수정합니다.</h1>
       <form action="update_check.jsp"method="post">
       <input type="password" name="pw" placeholder="비밀번호"><hr/>
       <input type="text" name="name" placeholder="이름"value="<%=uName%>"><hr/>
       <input type="email" name="email" placeholder="이메일"value="<%=uEmail%>"><hr/>
       <input type="submit" value="정보수정완료">
       <input type="reset" value="초기화">       
       </form>
</body>
</html>