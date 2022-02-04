<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 체크</title>
</head>
<body>
   <%-- form태그를 하나 만들어주세요.
   목적지는 res_check.jsp 이고 methid는 get방식입니다.
   input 태그로 나이를 입력받고, 제출버튼에는 "확인"이라고 적혀있습니다. --%>
    <fieldset>
     <legend>회원가입 체크사항</legend>
       <form action="res_check.jsp" method="get">
          나이를 입력해주세요.<input type="number" name="age">
          <input type="submit" value="확인">  
       </form>
     </fieldset>  
</body>
</html>