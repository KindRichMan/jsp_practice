<%@page import="java.text.Normalizer.Form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>당신은 버스를 타려고 합니다.</h1>
    <hr>
    <img src="repository/img1.jpg" width="200px" height="300px"> 
    
    <form action="bus_check.jsp" method="post">
       당신의 나이는?<input type="number" name="age">    
                  <input type="submit" value="삐빅">
    </form>
</body>
</html>