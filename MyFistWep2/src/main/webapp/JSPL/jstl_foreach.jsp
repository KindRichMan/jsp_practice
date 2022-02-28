<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%-- 
      int total = 0;
      for(int i =1; 101; i++){
         total += i;
         }
         out.print("<h1>1부터 100까지 총합은 :" total + "</h1>");
         --%>
         
         <c:forEach begin="1" end="100" step="1" var="number">
            <c:set var="total" value="${total + number}"/>
         </c:forEach>
         <h1>1~100까지의 누적합 : ${total}</h1>
         
         <hr/>
         <c:forEach begin="1" end="9" var="gu">
            4 x ${gu }= ${ 4 * gu}<br/>
          </c:forEach>
        <hr/>
        
        <c:forEach begin="2" end="9" var="dan">
             <c:forEach begin="1" end="9" var="ru">
             ${dan } x ${ru}=   ${dan * ru }<br/>
         
        </c:forEach>
       <hr/>
        </c:forEach>
         
          
         
         
</body>
</html>