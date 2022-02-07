<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    // 폼에서 날아온 데이터들을 저장해주세요.
     String userId = request.getParameter("userId");
    String userPw = request.getParameter("userpw");
    String autoLogin = request.getParameter("auto");
    // 만약 자동로그인설정이 되어있다면 쿠키를 생성해주시고
    // cookie name값은 "auto_login" value값은 전달받은 아이디로 해 주세요.
    // 쿠키 유효시간은 50초입니다.
    // 쿠키가 생성되었건 말건 cookie_welcome.jsp로 리다이렉트 시켜줍니다.
    
    if(userId.equals("abc1234") && userPw.equals("aaa1111")){
    	 // 쿠키는 로그인 성공한 경우에 발급해야함
      if(autoLogin != null){
    	  // 쿠키생성
    	Cookie auto = new Cookie("autoLogin",userId);
    	  // 쿠키 유효시간 세팅
    	  auto.setMaxAge(50);
    	// 쿠키는 생성했으면 발급까지 처리해야함.
    	response.addCookie(auto);
    }
    // 쿠키 발급 여부와 상관없이 로그인에 성공했으므로 웰컴페이지로 이동.
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
    <b>로그인에 실패하였습니다.</b>
        <a href="cookie_login.jsp">로그인 화면으로 돌아가기</a>
    
</body>
</html>