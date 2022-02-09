<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String auto = request.getParameter("auto");
      
      
      if(id.equals("abc1234")&& pw.equals("aaa1111")){
    	  if(auto != null){
    		  Cookie abc = new Cookie("auto_login",id);
    		  abc.setMaxAge(50);
    		  response.addCookie(abc);
    		}  
    		  response.sendRedirect("cookie_welcome.jsp");
    	  
    	  
      }        
%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <a href="cookie_login.jsp"><h1>로그인에 실패했습니다. 로그인창으로 돌아갑니다.c</h1></a>
                 
</body>
</html>