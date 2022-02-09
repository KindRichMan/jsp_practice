<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
      Cookie[] cookies = request.getCookies();
      String auto = null;
     
      if(cookies != null){
    	  for(Cookie cookie : cookies){
    		  auto = cookie.getName();
    		  if(auto.equals("auto_login")){
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
           <fieldset>
               <legend>로그인창입니다.</legend>
               <form action="cookie_login_ok.jsp" method="post">
               <input type="text" name="id">아이디<br/> 
               <input type="password" name="pw">비밀번호<br/> 
               <input type="checkbox" name="auto" value="checked"><br/>자동로그인
               <input type="submit" value="로그인">
               <input type="reset" value="초기화">
               </form>
           
           </fieldset>
</body>
</html>