<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    String userId = (String)session. getAttribute("id_session");
    out.println(userId);
    String user = (String)session. getAttribute("name_session");
    out.println(user);
    String ud = (String)session. getAttribute("JSP");
    out.println(ud);
    
    session.setMaxInactiveInterval(30);
    
    int sTime = session.getMaxInactiveInterval();
     out.println("세션의 유효시간 : " + sTime + "초<br/>");
    out.println("------------<br/>");
    
    
    user = (String)session.getAttribute("name_session");
    	out.println("name_session 삭제전 :" + user +"<br/>");	
 
    	session.removeAttribute("name_session");
    	user = (String)session.getAttribute("name_session");
   out.println("name_session 삭제후  :" + user +"<br/>");
   
   ud = (String)session.getAttribute("JSP");
	out.println("JSP 삭제전 :" + ud +"<br/>");
	 userId = (String)session.getAttribute("id_session");
		out.println("id_session 삭제전 :" + userId +"<br/>");
		
		session.invalidate();
		if(request.isRequestedSessionIdValid()){
			out.println("유효한 세신 존재");
		}else {
			out.println("세션이 파기되어 조회할 수 없습니다.<br/>");
		}
   
   
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>