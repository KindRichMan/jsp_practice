<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <form action="req_login_result.jsp" method="post">
      아이디: <input type="text" name="id" size="15px"><br/>
      비밀번호: <input type="password" name="pw"><br/>
            <input type="submit" value="로그인">
            <input type="reset" value="초기화">
            <a href="#">회원가입</a>
      </form>
</body>
</html>