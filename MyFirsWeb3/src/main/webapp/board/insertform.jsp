<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <form action="http://localhost:8181/MyFirsWeb3/InsertServlet"method="post">
      <input type="text" name="title" placeholder="제목을 입력해주세요"required><br/>
      <input type="text" name="writer" placeholder="작성자를 입력해주세요"required><br/>
      <textarea rows="15" cols="50" name="contemt" placeholder="본문을 작성해주세요."></textarea><br/>
      <input type="submit" value="전송">
      </form>
</body>
</html>