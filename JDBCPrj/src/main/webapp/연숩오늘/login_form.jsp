<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    if(sId != null){
    	response.sendRedirect("login_welcome.jsp"); 
    }
    
    %>
    
    <style>
       #update_box {
       width: 300px;
       margin: 0 auto;
       border-radius:10px;
       border:solid 1px #111;
       padding-left : 30px;
       background-color : green;
       }
    
    </style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <div id="update_box">
                <form action="login_check.jsp" method="post">
                <input type="text" name="fid" placeholder="아이디"><br/>
                <input type="password" name="fpw" placeholder="비밀번호"><br/>
                <input type="submit" value="로그인">
                <input type="reset" value="초기화">
                </form>
                 <a href="join_form.jsp">회원가입하기</a>
      </div>           
               
</body>
</html>