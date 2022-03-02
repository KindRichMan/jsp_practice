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
        
        <hr/>
        <h1>숫자가 아닌 요소를 반복하는 JSTL</h1>
        <%--arr변수 내에 과일 5개 이름을 배열로 저장하는 구문 --%>
        <c:set var="arr" value='<%=new String[] {"사과","딸기","망고", "바나나", "포도"} %>'/>
        <%--c:forEach는 향상된 for문처럼 쓸 수도 있습니다. --%>
        <c:forEach var="i" items="${arr }">
        ${i } &nbsp;
        </c:forEach>
        <%--
                  String[] arr = {"사과","딸기","망고", "바나나", "포도"};
                  for(String i : arr){
                       out.println(i + "&nbsp;"); 
                       }
        --%>
        <c:set var="num" value='<%= new int[] {10,20,30,40,50} %>'/>
        <c:forEach var="j" items="${num }">
        ${j } &nbsp;&nbsp;
        </c:forEach>
         
        
        
        
        
        
         
          
         
         
</body>
</html>