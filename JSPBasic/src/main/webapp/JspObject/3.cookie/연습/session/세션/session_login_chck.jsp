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
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String nickname = request.getParameter("nickname");
    
    if(id.equals("kkk1234") && pw.equals("1111")){
    	session.setAttribute("id", "kkk1234");
    	session.setAttribute("pw ", 1111);
    	session.setAttribute("nickname", "nick");
    	response.sendRedirect("session_welcome.jsp");
    }
    %>
     <h1>로그인에 실패하였습니다.</h1>
     <a href="session_login.jsp">로그인 창으로 돌아갑니다.</a>
</body>
</html>