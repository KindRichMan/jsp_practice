<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="travel_check.jsp" method="post">
      중국 :       <input type="radio" value="ch" name="city"><br/>
      일본 :       <input type="radio" value="jp" name="city"><br/>
      코타키나발루 : <input type="radio" value="ct" name="city"><br/>
      팔라우 :     <input type="radio" value="pal" name="city"><br/>
      <input type="submit" value="여행가기">
      <input type="reset" value="취소">
   
   </form>
</body>
</html>