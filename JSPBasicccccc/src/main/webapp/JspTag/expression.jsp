<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%!
     double areaCircle(double r){
    	return r * r * Math.PI;
       }
    %>
    
    <%
         String name  = "김무환";
         int age = 44;
         out.println("이름 :" + name + "<br>" );
         out.println("나이 :" + age + "<br>" );
         out.println(areaCircle(5) +"<br>");
    %>
    
    이름 : <%= name %> <br/>
    이름 : <%= name %> <br/>
    반지름 5인원넓이 : <%= areaCircle(5) %>cm^2
    
</body>
</html>