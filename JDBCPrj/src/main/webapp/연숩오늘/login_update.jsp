<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    }
    
           String dbType ="com.mysql.cj.jdbc.Driver";
           String dbUrl ="jdbc:mysql://localhost:3306/jdbcprac1";
           String dbId = "root";
           String dbPw = "mysql";
           

           String tName = "";
           String tEmail = null;
           try{
        	   Class.forName(dbType);
               Connection con = DriverManager.getConnection(dbUrl,dbId, dbPw);
       		
               String sql = "SELECT * FROM userinfo WHERE uid=?";
               
               
       		 PreparedStatement pstmt = con.prepareStatement(sql);
       		pstmt.setString(1, sId);
       		
                ResultSet rs = pstmt.executeQuery();
                
                if(rs.next()){
                	tName = rs.getString("uname");
        			tEmail = rs.getString("uemail");
             
                }
    		// 접속 끊기
    		con.close();
    		pstmt.close();
    	} catch(Exception e){
    		e.printStackTrace();
    	} finally{
    		
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
             <h1><%=sId %>계정의 정보를 수정합니다!</h1>
	<form action="update_check.jsp" method="post">
		<input type="password" name="fpw" placeholder="비밀번호"/><br/>
		<input type="text" name="fname" placeholder="이름" value="<%= tName %>"/><br/>
		<input type="email" name="femail" placeholder="이메일" value="<%= tEmail %>"/><br/>
		<input type="submit" value="수정하기">
		<input type="reset" value="초기화">
	</form> 
                     
</body>
</html>