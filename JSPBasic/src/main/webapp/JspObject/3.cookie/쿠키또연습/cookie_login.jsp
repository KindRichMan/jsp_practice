<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
       Cookie[] cookies = request.getCookies();
        String at = null;
      if(cookies != null){  
       for(Cookie cookie : cookies){
    	   at = cookie.getName();
    	   
    	   if(at.equals("auto_login")){
    		   response.sendRedirect("cookie_welcome.jsp");
    	   }
       }
      }
    %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
               <form action="cookie_login_ok.jsp">
         아이디 :  <input type="text" name="id"></br>
         비밀번호 :<input type="password" name="pw"></br>
         자동로그인 <input type="checkbox" name="auto" value="checked">
                 <input type="submit" value="로그인" >
                 <input type="reset" value="초기화">
                 
               </form>
</body>
</html>