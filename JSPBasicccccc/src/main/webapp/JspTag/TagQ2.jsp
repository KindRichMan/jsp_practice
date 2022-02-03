<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%! public int number = 0; %>
    
     페이지 누적 요청수 : <%=++number %> </br>
     매 10번째 방문자에게는 기프티콘을 드립니다.</br>
    <%if(number % 10 == 0){%> 
        당첨되셨습니다.
        <%} %>
        <hr>
        
        
         <% int num = (int)(Math.random()*8)+2;%>
         <h2>랜덤 구구단(<%=num %>단)</h2>
         <p>이번에 나올 구구단은 <%=num %>단입니다. </br></p>
        
         <%  for(int i = 1; i < 10; i++){
          out.println(num + "x" + i + "=" + (num * i) + "</br>");
        }%>
        
        
