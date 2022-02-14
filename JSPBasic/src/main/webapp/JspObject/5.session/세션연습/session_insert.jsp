<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    session.setAttribute("id_session", "abc1234");
    session.setAttribute("name_session", "김말이");
    session.setAttribute("JSP", "SPRING_FRAMEWORK");
    
    session.setMaxInactiveInterval(3600);
    %>
    <a href="session_check.jsp">세션확인하기</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>