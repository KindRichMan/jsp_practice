<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String nick = request.getParameter("nickname");
    
    String loginCheck = (String)session.getAttribute("session_id"); 
	if(loginCheck != null){
		response.sendRedirect("session_login.jsp");
	}
    
    if(id.equals("kkk1234") && pw.equals("1111") ){
    	session.setAttribute("session_id", id);
    	session.setAttribute("session_pw", pw);
    	session.setAttribute("session_nick", nick );
    	response.sendRedirect("session_welcome.jsp");
    	
    
    }
      
    
    
    %>
    <a href="session_login.jsp">로그인에 실패했습니다. 클릭하시면 로그인 창으로 돌아갑니다.</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>