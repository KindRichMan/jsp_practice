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
   String nickName= request.getParameter("nickname");
   System.out.print("아이디가 있는지 확인 :" + id);
   
  String loginCheck = (String)session.getAttribute("session_id");
  if(loginCheck != null){
	  response.sendRedirect("session_welcome.jsp");
  }
 
 
     //id, pw가 null인 경우는 session_login.jsp로 리다이렉트 시키는 로직을 추가
     if(id== null || pw == null){
    	 response.sendRedirect("session_login.jsp");
     }
 
 %>
 
  <% if(id.equals("kkk1234")  && pw.equals("1111")){%> 
	 <%   session.setAttribute("session_id",id);
	   session.setAttribute("session_pw",pw);
	   session.setAttribute("session_nick",nickName);
	   response.sendRedirect("session_welcome.jsp");
	   %>
  <% }else{%> 
	  <a href="session_login.jsp"> 로그인에 실패했습니다. 누르면 로그인 창으로 돌아갑니다. <a/>
   <%}; %>
 
</body>
</html>