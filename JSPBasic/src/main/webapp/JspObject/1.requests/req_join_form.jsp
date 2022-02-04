<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <fieldset size="200">
            <legend>회원가입</legend>
            <form action="req_join_result.jsp" method="post">
            <input type="text" name="id" >아이디<br/>
            <input type="password" name="pw">비밀번호<br/>
            <input type="text" name="name">이름<br/>
            <input type="number" name="age">나이<br/>
            
            <input type="submit" value="회원가입하기"><br/>
            <input type="reset" value="초기화">
            </form>
       </fieldset>
</body>
</html>