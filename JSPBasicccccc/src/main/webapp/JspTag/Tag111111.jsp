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
        public int num = 0;
     %>
     
     <p>페이지 누적 요청 수 : <%= ++num %></p>
     매 10번째 방문자에게는 기프티콘을 드립니다.
     <%  if(num % 10 == 0){%><br>
        <%="당첨되셨습니다." %>
               <%} %>
               <hr>
               
             <% int gugu =(int)(Math.random()*8)+2; %>  
               <h2>랜덤 구구단(<%=gugu %>단)</h2>
               <P>이번에 나온 구구단은 <%=gugu %>단 입니다.</P>
               <%for(int i =1; i < 10; i++){
            	   out.println(gugu +"x"+  i +"=" + gugu*i + "</br>");
               }%>



</body>
</html>