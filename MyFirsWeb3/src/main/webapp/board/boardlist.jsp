<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
       
       <table class="table table-dark table-striped">
          <head>
	           <tr>
	              <td>번호</td>
	              <td>글제목</td>
	              <td>글내용</td>
	              <td>작성자</td>
	              <td>작성일</td>
	              <td>최종수정일</td>
	              <td>조회수</td>
	           </tr>
          </head>  
          <body>
              <c:forEach var="board" items="${boardList}">
               <tr>
                   <th>${board.board_num}</th>
                   <td><a href="http://localhost:8181/MyFirstWeb3/boarddetail?board_num=${board.board_num } ">${board.title }</td>
                   <th>${board.content}</th>
                   <th>${board.writer}</th>
                   <th>${board.bdate}</th>
                   <th>${board.mdate}</th>
                   <th>${board.hit}</th>
               </tr>
              </c:forEach> 
          </body>
       </table>
       
</body>
</html>