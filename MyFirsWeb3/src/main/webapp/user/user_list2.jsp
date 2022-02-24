<%@page import="kr.co.ict.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String dbType = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
    String dbId = "root";
    String dbPw = "mysql";
    PreparedStatement pstmt = null;
    Connection con = null;
    ResultSet rs = null;
    
    List<UserVO> userList = new ArrayList<>();
    
    
    try{
    	Class.forName(dbType);
    	con=DriverManager.getConnection(dbUrl,dbId,dbPw);
    	String sql = "SELECT *FROM userinfo";
    	pstmt = con.prepareStatement(sql); 
    	rs = pstmt.executeQuery();
    	  
    	  while(rs.next()){
    		  String uName = rs.getString("uname");
    		  String uId = rs.getString("uid");
    		  String uPw = rs.getString("upw");
    		  String uEmail = rs.getString("uemail");
    				  
    		UserVO userData = new UserVO(uName,uId,uPw,uEmail);	
    		userList.add(userData);
    	  }
    	
    	System.out.println(userList);
       //out.println(userList+"<br>");
    	
    	
    	
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
         <table border="1">
            <thead>
             <tr>
                <th>유저이름</th>           
                <th>유저아이디</th>           
                <th>유저비번</th>           
                <th>유저이메일</th>           
             </tr>
            </thead> 
            <tbody>
               <% for(UserVO user : userList){%>  
                <tr>
                   <th><%=user.getuName() %></th>
                   <th><%=user.getuId() %></th>
                   <th><%=user.getuPw() %></th>
                   <th><%=user.getuEmail() %></th>
                </tr>   
           <%} %> 
          </tbody>
        </table>                    
</body>
</html>