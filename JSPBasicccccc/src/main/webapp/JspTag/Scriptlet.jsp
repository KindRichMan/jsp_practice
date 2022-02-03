<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%for(int i = 0; i < 3; i++){ %> 
       <h2>반복문 테스트1</h2>      
       <p>
            반복이 잘됩니다.
        </p>
     <% } %>
     
     <% for(int i = 1; i < 10; i++){
            out.println("2*" + i + "=" +(2*i) + "<br>");
     }
     %>
     <%
        for(int i = 3; i < 10; i++){
        	out.println(i + "단" + "</br>");
        	
        	for(int j = 1; j < 10; j++){
        		out.println(i + "*" + j + "=" + (i*j) +"<br>");
        	    
        }
        	out.println("--------------------<br>");
        }
     %>
</body>
</html>