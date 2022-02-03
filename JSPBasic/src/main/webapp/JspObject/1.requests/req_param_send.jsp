<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%-- 아래에 form을 만들고 내부에 input 4개를 만들어주세요.
 input 태그에 type속성은 하나는 text, 하나는 password
 name속성은 하나는 apple, 하나는 banana로 해 주세요.
 reset버튼과  submit 버튼도 각각 하나씩 만들어주세요. 
 
 <from의 action이 바로 목적지를 적는 부분임.
 웹개발에서는 받을 페이지 화면의 주소를 적어줍니다.
 --%>
    <fieldset>
       <form action="req_param_getpost.jsp" method="get">
           <input type="text" name="apple" placeholder="아이디"/><br>
           <input type="password" name="banana" placeholder="비밀번호"/><br>
           
           취미 :<br>
           <input type="checkbox" name="hobby" value="독서">독서&nbsp;
           <input type="checkbox" name="hobby"value="딸과 놀기">딸과 놀기&nbsp;
           <input type="checkbox" name="hobby"value="코딩">코딩&nbsp;
           <input type="checkbox" name="hobby"value="여행">여행&nbsp;
           <input type="checkbox" name="hobby"value="맛집탐방">맛집탐방&nbsp;
           <br>
           전공: <br>
           <input type="radio" name="major" value="생물학">생물학&nbsp;
           <input type="radio" name="major" value="경영학">경영학&nbsp;
           <input type="radio" name="major" value="IT">IT&nbsp;
           <input type="radio" name="major" value="경제학">경제학&nbsp;
           
          <input type="reset" value="초기화"/> 
          <input type="submit" value="제출"/>
         
      </form>
 </fieldset>
 
</body>
</html>