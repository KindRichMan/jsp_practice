<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>${board.board_num}번 글 상세페이지</h1>
   글제목 : <input type="text" value="${board.title }" readonly><br/>
   글쓴이 : <input type="text" value="${board.writer }" readonly><br/>
   쓴날짜 : <input type="text" value="${board.bdate }" readonly><br/>
   최종수정날짜 : ${board.mdate }<br/>
   본문:<br/><textarea rows="15" cols="40">${board.content }</textarea>
   <a href="http://localhost:8181/MyFirsWeb3/boardList">목록으로 넘어가기</a>
   </body>
</html>