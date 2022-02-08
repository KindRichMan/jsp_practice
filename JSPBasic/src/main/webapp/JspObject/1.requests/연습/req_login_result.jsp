<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
     
    %>
    <% if(id.equals("aaaa")&& pw.equals("1111")){%>
  	  <b><%=id %>님,님 환영합니다.</b>
  <%}else {  %>   
    <h1>로그인에 실패하였습니다.</h1>
    <a href="req_login_form.jsp">로그인창으로 돌아가기</a>
  <%} %>
</body>
</html>