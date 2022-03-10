<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <form action="http://localhost:8181/MyFistWep2/insertBoard" method="post">
     <input type="text" name="title" placeholder="글제목" required><br/>
     <textarea type="text" name="content" placeholder="글내용"required></textarea> <br/>
     <input type="text" rows="15"cols="50" name="writer" placeholder="본문을 입력해주세요."required><br/>
     <input type="submit" value="서블릿으로 보내기">
     </form>
     
</body>
</html>