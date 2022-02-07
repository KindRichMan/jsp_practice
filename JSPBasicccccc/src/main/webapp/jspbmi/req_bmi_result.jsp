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
  String hei = request.getParameter("height");  
  String wei = request.getParameter("weight");  
  
     double cm = Double.parseDouble(hei);
     double kg = Double.parseDouble(wei);
     
     double bmi = kg/ (cm/100 * cm/100);
 
 %>
     
    
	     
	     
	     <h2>BMI웹 어플레케이션 </h2>
	     <hr>
	   <p> 
	     -신장 : <%=hei %>cm<br/>
	     -체중 : <%=wei %>kg<br/>
	    </p> 
	   <p>
	     BMI 지수 : <b><%= bmi %></b><br/>
	    
	     <% if(bmi > 23) { %>
	     <b>체중조절을 고려해보세요.</b>
	     <%}else if(bmi < 18.5){ %>
	     <b>당신은 저체중입니다.</b>
	     <%}else{ %>
	     <b>당신은 정상 체중입니다.</b>
	     <%} %>
	     
     <p/>
     
 
 
 
</body>
</html>