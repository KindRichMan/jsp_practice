<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="http://localhost:8181/MyFirstWeb/InsertBoard"method="post">
       <table border="1">
	      <tr>
	           <th>글제목</th>
	           <th><input type="text" name="title" placeholder="글제목"required></th>
	      </tr>
	       <tr>
	           <th>글내용</th>
	           <th><textarea rows="30 cols="50" name="content" placeholder="본문을 입력해주세요."required></textarea></th>
	       </tr>
	       <tr>
	           <th>글쓴이</th>
	           <th><input type="text" name="writer" placeholder="글쓴이"required></th>
	       </tr>
	       <tr>
	          <th colspan="2"> <input type="submit" value="서블릿으로 보내기">
	             <input type="reset" value="초기화">
	          </th>
	       </tr>
       </table>
       </form>
</body>
</html>