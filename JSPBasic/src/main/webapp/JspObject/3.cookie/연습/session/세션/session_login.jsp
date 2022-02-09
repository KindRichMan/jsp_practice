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
      
    String id = (String)request.getAttribute("session_id");
    String pw = (String)request.getAttribute("session_pw");
    String nickName = (String)request.getAttribute("session_nickname");

%>


         <fieldset>
           <legend>로그인 창입니다.</legend>
           <form action="session_login_chck.jsp" method="post">
           <input type="text" name="id" placeholder="아이디" ><br/>
           <input type="password" name="pw" placeholder="비밀번호"><br/>
           <input type="text" name="nickname" placeholder="닉네임"><br/>                 
           <input type="submit" value="로그인">
           <input type="reset" value="초기화">
           </form>
         
         </fieldset>
</body>
</html>