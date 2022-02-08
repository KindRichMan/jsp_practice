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
      
      if(id.equals("abcd") && pw.equals("aaa1111")){
    	  if(at != null){
    		  Cookie aaa = new Cookie("auto_login",id);
    		  aaa.setMaxAge(50);
    		  response.addCookie(aaa);
    		  
    		  response.sendRedirect("cookie_welcome.jsp");
    	  }
      }
      
     %>
     <b>로그인에 실패했습니다.</b>
     <a href="cookie_login.jsp">로그인화면으로 돌아가기
</body>
</html>