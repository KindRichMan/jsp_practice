<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //세션에 저장된 정보를 확인해
    // ID님 접속을 화녕ㅇ합니다. 라고 안내해주는 화면을 만들어보겠습니다.
    // 추후 여기에는 탈퇴하기 , 가입하기 , 정보수정하기 버튼이 추가될 예정입니다.
    String sId = (String)session.getAttribute("session_id");
   
    if(sId == null){
    	response.sendRedirect("login_form.jsp");
    	
    }

    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1><%=sId %>님 접속을 환영합니다.</h1>
 <a href="login_update.jsp">정보수정하기</a><br/>
 <a href="logout.jsp"> 로그아웃하기</a><br/>  
  <a href="member_out.jsp">회원탈퇴하기</a><br/>
 <!-- 회원목록보기 링크 만들기 -->
 <a href="user_list2.jsp">회원목록보기</a>
</body>
</html>        
