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
   String strCm = request.getParameter("height");
   String strKg = request.getParameter("weight");
   double cm = Double.parseDouble(strCm); 
   double kg = Double.parseDouble(strKg); 
   
   double bmi = kg / (cm/100 * cm/100);
%>

 <h2>BMI 웹어플리케이션</h2>
 <hr>
 -신장:<%=strCm %>
 -체중:<%=strKg %>
 
 BMI지수 : <%=bmi %><br>
 
 <% if(bmi > 23){ %>
 <b>체중조절을 고려해보세요</b>
 <%}else if (bmi < 18.5){ %>
 <b>당신은 저체중입니다.</b>
 <% }else {%>
 <b>당신은 정상 체중입니다.</b>
 <%} %>
 

     
</body>
</html>