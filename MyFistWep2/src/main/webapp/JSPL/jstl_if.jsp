<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% request.setCharacterEncoding("utf-8");%>
   <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <c:if test="${param.name eq'홍길동'}">
        <p>name 파라미터로 들어온 값은 ${param.name}입니다.</p>
        <c:out value="name 파라미터로 들어온 값은 ${param.name }입니다."></c:out>
       </c:if>    
       <c:if test="${param.name == '이순신' }">
       <p>name 파라미터로 들어온 값은 ${param.name}입니다.</p>
       </c:if>
      
      <%// String fName = request.getParameter("name"); 와 동일한 명령어 c:set  %>
     <c:set var="fName" value="${param.name }"/> 
      <c:out value="당신이 입력한 값은${fName }입니다."/>
      
       
       
</body>
</html>