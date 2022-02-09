<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
     String id = (String)session.getAttribute("session_id"); 
     String pw = (String)session.getAttribute("session_pw"); 
     String nickName = (String)session.getAttribute("session_nick"); 
     
     if(id == null){
    	 response.sendRedirect("session_login.jsp");
     }
%>
        
           <%=nickName %>(<%=id %>)님, 로그인을 환영합니다.
           <a href="session_login.jsp">로그아웃하기</a>
        
</body>
</html>