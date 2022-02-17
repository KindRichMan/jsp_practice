<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    String sId = (String)session.getAttribute("session_id");
	if(sId == null){
		// 로그인 안 한 사람이 해당 주소를 얻어서 접속한 경우
		response.sendRedirect("login_form.jsp");
	}
    	 
    	    String dbType = "com.mysql.cj.jdbc.Driver";
    		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
    		String dbId = "root";
    		String dbPw = "mysql";
    	
    	    String tName = "";
    		String tEmail = "";
	
    		
    	 
    		try{
    			// 3. 로그인된 아이디의 전체 정보(SELECT * FROM...) 를 얻어옵니다.
    			Class.forName(dbType);
    			Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
    			
    			String sql = "SELECT * FROM userinfo WHERE uid=?";
    			
    			PreparedStatement pstmt = con.prepareStatement(sql);
    			pstmt.setString(1, sId);
    		 
    			ResultSet rs = pstmt.executeQuery();
    			// 4. ResultSet에서 얻어온 정보 중 name, email을 변수에 저장합니다.
    			// 혹시나 데이터가 안들어왔을 상황을 대비해 rs.next()는 if문의 조건절에 넣어서
    			// 실행하는것이 좋습니다.
    			if(rs.next()){
    				tName = rs.getString("uname");
    				tEmail = rs.getString("uemail");
    			}
    		
    			
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
          <h1><%=sId %>계정명 아이디의 정보를 수정합니다.</h1>
          <form action="update_check.jsp" method="post">
          <input type="password" name="pw" placeholder="비밀번호" ><br/>
         <input type="text" name="name" placeholder="이름" value="<%= tName %>"required/><br/>
		<input type="email" name="email" placeholder="이메일" value="<%= tEmail%>"required/><br/>
          <input type="submit" value="회원정보수정">
          <input type="reset" value="초기화">
          </form>
</body>
</html>