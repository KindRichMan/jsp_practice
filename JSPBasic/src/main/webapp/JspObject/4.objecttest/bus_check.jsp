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
   
    String stAge = request.getParameter("age");
   int age = Integer.parseInt(stAge); 
     if(age < 19){
    	  response.sendRedirect("bus_junior.jsp");
      }else if(age > 20 && age <= 59){
    	  response.sendRedirect("bus_adult.jsp");
      }else{
    	  response.sendRedirect("bus_senior.jsp");
     
     
      }
   
   
   
   %>
</body>
</html>