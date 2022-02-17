<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
     
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
     session.invalidate();
     response.sendRedirect("login_welcome.jsp");
   %>
   <a href="login_form.jsp">로그인 화면으로 이동하기</a>
</body>
</html>