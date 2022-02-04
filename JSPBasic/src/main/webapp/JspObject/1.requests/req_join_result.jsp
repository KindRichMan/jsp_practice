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
       String name = request.getParameter("name");
       String age = request.getParameter("age");
    %>
    
    <%if(id.equals("abcd")){ %>
     <h1>중복 아이디로 가입하실 수 없습니다.</h1>
     <%}else{ %>
         <h1><%=id %>(<%= name %>)님 회원가입을 축하드립니다.</h1>
     <%} %>
    
    
    
</body>
</html>