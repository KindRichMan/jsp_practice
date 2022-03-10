<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
   
<table class="table table-success table-striped">
     <tr>
         <th>글번호번호</th>  
         <th>제목</th>  
         <th>본문</th>  
         <th>글쓴이</th>  
         <th>쓴날짜</th>  
         <th>최종수정날짜</th>  
         <th>조회수</th>  
     </tr>
       <c:forEach var="board" items="${boardList }">
	     <tr>
	         <td>${ board.board_num}</td>   
	          <td><a href="http://localhost:8181/MyFistWep2/BoardDetail?board_num=${ board.board_num}">${ board.title}</a></td>         
	         <td>${ board.content}</td>         
	         <td>${ board.writer}</td>         
	         <td>${ board.bdate}</td>         
	         <td>${ board.mdate}</td>         
	         <td>${ board.hit}</td>         
	     </tr>
	    </c:forEach>        
	        
</table>
  
</body>
</html>