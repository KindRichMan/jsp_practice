<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    String id = (String)session.getAttribute("session_id");
    String pw = (String)session.getAttribute("session_pw");
    String nick = (String)session.getAttribute("session_nick");
    
    if(id != null ){
    	response.sendRedirect("session_login.jsp");
    }
    
    %>
    
    <%= nick%>(<%=id %>)님, 로그인을 환영합니다.
    <a href="session_login.jsp">로그아웃 하기</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>