<%@page import="com.mysql.cj.jdbc.PreparedStatementWrapper"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String dbType ="com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId = "root";
    String dbPw = "mysql";
    
    ResultSet rs = null;
    Connection con =null;
    PreparedStatement pstmt =null;
    
    try{
    	Class.forName(dbType);
    	 con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    	String sql = "SELECT *FROM userinfo";
    	 pstmt = con.prepareStatement(sql);
    	 rs = pstmt.executeQuery(); 
    	//while(rs.next()){
    	//	out.println("회원이름 : " + rs.getString("uname")+"<br/>");
    	//	out.println("회원아이디 : " + rs.getString("uid")+"<br/>");
    	//	out.println("회원비밀번호 : " + rs.getString("upw")+"<br/>");
    	//	out.println("회원이메일 : " + rs.getString("uemail")+"<br/>");
    	//	out.println("======================================"+"<br/>");
    	//}
    	
    	
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
<table border="1px">
      <tr>
         <th>유저이름</th>
         <th>유저아이디</th>
         <th>유저비밀번호</th>
         <th>유저이메일</th>
      </tr>
     <tbody>
        <% while(rs.next()){%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
        </tr>
        
          
        <% }%>
        
        
      
        
        
       
     </body> 
</table>

</body>
</html>