<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <h1><%=sId %>님의 회원정보가 수정되었습니다.</h1>
        <a href="login_welcome.jsp">홈으로 돌아가기</a>
</body>
</html>