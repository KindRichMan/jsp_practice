<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String id = (String)session.getAttribute("session_id");
    String pw = (String)session.getAttribute("session_pw");
    String nick = (String)session.getAttribute("session_nick");
    if(id != null){
    	response.sendRedirect("session_welcome.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
                <form action="session_login_check.jsp" method="post">
                <input type="text" name="id" placeholder="아이디"><br/>
                <input type="password" name="pw" placeholder="비밀번호" required><br/>
                <input type="text" name="nickname" placeholder="닉네임"><br/>
                <input type="submit" value="로그인">
                <input type="reset" value="초기화">                
                </form>

</body>
</html>