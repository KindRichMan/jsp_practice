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
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String at = request.getParameter("auto");
        
        if(id.equals("abc1234") && pw.equals("aaa1111")){
        	if(at != null){
        		Cookie name = new Cookie("auto_login", "id");
        	name.setMaxAge(50);
        	response.addCookie(name);
        }
           response.sendRedirect("cookie_welcome.jsp");
        }
        
        
        %>
        
        
        
        <h1>로그인에 실패했습니다.</h1>
        <a href="cookie_login.jsp">로그인화면으로 돌아갑니다.</a>
</body>
</html>