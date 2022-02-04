<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 구현</title>
</head>
<body>
   <fieldset>
      <legend>로그인 창입니다.</legend>
    <form action="req_login_result.jsp" method="post">
  아이디 입력 :   <input type="text" name="id" placeholder="아이디"><br/>
  비밀번호 입력 : <input type="password" name="pw" placeholder="비밀번호"><br/>
    <input type="submit" value="로그인">&nbsp;
    <input type="reset" value="취소">
    </form>
    </fieldset>
    <a href="req_login_result.jsp">회원가입</a>
</body>
</html>