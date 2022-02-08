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
    String city = request.getParameter("city");
    
    if(city.equals("ch")){
    	response.sendRedirect("travel_ch.jsp");
    }else if(city.equals("ct")){
    	response.sendRedirect("travel_ch.jsp");
    }else if(city.equals("jp")){
    	response.sendRedirect("travel_ch.jsp");
    }else if(city.equals("pal ")){
    	response.sendRedirect("travel_ch.jsp");
    };
    %>
</body>
</html>