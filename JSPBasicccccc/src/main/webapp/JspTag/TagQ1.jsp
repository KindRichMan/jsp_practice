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
   int randomNumber(){
	   int result = (int)(Math.random()*10)+1;
	   return result;
   }
	   String randomColor(){
		  Double random = (Math.random());
		 String result;
		  if(random < 0.33){
			  result = "파랑";
		  }else if(random < 0.66){
			  result = "노랑";
		  }else{
			  result = "초록";
		  }
		  return result;
	   }
	   
       public int a = 0;
	   
   %>   
   <h3>오늘의 행운의 숫자와 행운의 색깔</h3>
   <p>행운의 숫자는 1~10 범위입니다.</p>
   <p>행운의 숫자 : <b> <%=randomNumber() %></b></p>
   <p>색깔은 1/3확률로 바뀝니다.(빨강,노랑,파랑)</p>
   <p>행운의 색깔 : <b><%=randomColor() %></b></p>
   <h3>오늘의 방문자수 </h3>
   <%
       out.println(++a);
        int currentNum = 0;
        out.println("</br>");
        out.println(++currentNum);
   %>
   
   
</body>
</html>