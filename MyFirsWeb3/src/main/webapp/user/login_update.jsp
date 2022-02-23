<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    }
    
    
    String dbType= "com.mysql.cj.jdbc.Driver";
    String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId = "root";
    String dbPw = "mysql";
    
    String tName = "";
    String tEmail = null;
     
    try{
    	Class.forName(dbType);
    	Connection con = DriverManager.getConnection(dbUrl, dbId,dbPw);
    	String sql = "SELECT * FROM userinfo WHERE uid=?";
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setString(1,sId);
    	
    	ResultSet rs = pstmt.executeQuery();
    	if(rs.next()){
    		 tName = rs.getString("uname");
    		 tEmail = rs.getString("uemail");
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
          <h1><%=sId %>님의 아이디의 정보를 수정합니다!</h1>
          <form action="update_check.jsp" method="post">
          <input type="password" name="pw" placeholder="비밀번호"><br/>
          <input type="text" name="name" placeholder="이름" value="<%=tName%>" required><br/>
          <input type="email" name="email" placeholder="이메일" value="<%=tEmail%>"required><br/>
          <input type="submit" value="수정완료">
          <input type="reset" value="초기화">
          </form>
</body>
</html>