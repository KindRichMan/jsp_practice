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
          
           String useId = (String)session.getAttribute("id_session");
          out.println(useId+"<br/>");
          
          String id = (String)session.getAttribute("name_session");
          out.println(id+"<br/>");
          String idd = (String)session.getAttribute("JSP");
          out.println(idd +"<br/>");
          out.println("-----------"+"<br/>");
          
         
          int time = session.getMaxInactiveInterval();
          out.println("세션의 유효시간 :" + time);
          out.println("-----------"+"<br/>");
          
          id = (String)session.getAttribute("name_session");
          out.println("name_session 삭제 전 :" + id + "<br/>");
          out.println("-----------"+"<br/>");
          
          session.removeAttribute("name_session");
          id = (String)session.getAttribute("name_session");
          out.println("name_session 삭제 후 :" + id + "<br/>");
          out.println("-----------"+"<br/>");
          
          useId = (String)session.getAttribute("id_session");
          out.println("id_session 세션 삭제전 : " + useId + "<br/>");
          out.println("-----------"+"<br/>");
                   
          
          %>
</body>
</html>