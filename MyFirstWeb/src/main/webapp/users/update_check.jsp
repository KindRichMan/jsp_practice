<%@page import="javax.websocket.SendResult"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 1. form에서 보낸 비번, 이름, 이메일을 변수로 저장해주세요.
   request.setCharacterEncoding("utf-8");
    String fPw = request.getParameter("fpw"); 
  // System.out.println(fPw);
    String fName = request.getParameter("fname");
   // System.out.println(fName);
    String fEmail = request.getParameter("fEmail");
   // System.out.println(fEmail);
    // 2. session에 저장된 아이디를 변수로 저장해 주세요.
     String sId = (String)session.getAttribute("session_id");
  //   System.out.println("세션에서 얻어온 아이디 :" +sId);
  if(sId == null){
	   response.sendRedirect("login_form.jsp");
  }
    // 3. DB접속정보 변수로 관리
      String dbType = "com.mysql.cj.jdbc.Driver";
      String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
      String dbId = "root";
      String dbPw = "mysql";
    // 4. 연결
   try{
        Class.forName(dbType);
        Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
        String sql = "UPDATE userinfo SET upw=?, uname=?, uemail=? WHERE uid=?";
    
    // 5. PSTMT생성 및 ?에 값 세팅
    		PreparedStatement pstmt = con.prepareStatement(sql);
    		pstmt.setString(1,fPw);
    		pstmt.setString(2,fName);
    		pstmt.setString(3,fEmail);
    		pstmt.setString(4,sId);
    		
    // 6. pstmt 실행 및 자원 회수
             pstmt.executeUpdate();
             
            con.close();
            pstmt.close();
    
    // 7. body태그에 xxx회원의 정보가 수정되었습니다. 라고 안내해주고
    // 웰컴페이지로 돌아갈 수 있는 링크 넣어주기.
    
   }catch(Exception e){
	   e.printStackTrace();
   }finally{
	   
   }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         <h1><%=sId %>회원의 정보가 수정되었습니다.</h1>
         <a href="login_welcome.jsp">돌아가기</a>