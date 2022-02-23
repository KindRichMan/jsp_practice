<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sId = (String)session.getAttribute("session_id");
    if(sId != null){
    	response.sendRedirect("login_welcome.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
       <!-- 아이디와 비밀번호를 적어넣을 수 있는 폼을 만들어주세요.
            목적지는 login_check.jsp -->
         
           <div class="container">
             <h4 class="text-primary">로그인 창입니다</h4>
            <form action="login_check.jsp" method="post">
            <input type="text" name="fId" placeholder="아이디"><br/>
            <input type="password" name="fPw" placeholder="비밀번호"><br/>
            <input type="submit" value="로그인">
            <input type="reset" value="초기화">
            </form>
            <a href="join_form.jsp">회원가입하기</a>
           
          <div class="container">

    <h4 class="text-primary"> 기본적인 HTML5의 폼 형태</h4>

    <form >
        <label for="Name">이름</label>
        <input type="text" placeholder="이름">
        <label for="emailaddress">이메일</label>
        <input type="email" placeholder="이메일">
        <input type="submit" value="확인">
    </form>

    <hr>

    <h4 class="text-primary">부트스트랩을 이용하여 폼을 변형</h4>

    <form role="form">
    <div class="form-group">
        <label for="Name">이름</label>
        <input type="text" class="form-control" placeholder="이름">
    </div>
    <div class="form-group">

        <label for="emailaddress">이메일</label>
        <input type="email" class="form-control" placeholder="이메일">
    </div>
    <div class="form-group">
        <button type="submit"> 확인</button>
    </div>

    </form>

     <hr>

    <h4 class="text-primary">부트스트랩 인라인 폼</h4>

    <form role="form" class="form-inline">
    <div class="form-group">
        <label for="Name">이름</label>
        <input type="text" class="form-control" placeholder="이름">
    </div>
    <div class="form-group">

        <label for="emailaddress">이메일</label>
        <input type="email" class="form-control" placeholder="이메일">
    </div>
    <div class="form-group">
        <button type="submit"> 확인</button>
    </div>

    </form>

     <hr>

      <h4 class="text-primary">부트스트랩 인라인 폼 label에 .sr-only 적용 후 </h4>

    <form role="form" class="form-inline">
    <div class="form-group">
        <label for="Name" class="sr-only">이름</label>
        <input type="text" class="form-control" placeholder="이름">
    </div>
    <div class="form-group">

        <label for="emailaddress" class="sr-only">이메일</label>
        <input type="email" class="form-control" placeholder="이메일">
    </div>
    <div class="form-group">
        <button type="submit"> 확인</button>
    </div>

    </form>

     <hr>

    <h4 class="text-primary">부트스트랩 수평 폼</h4>

    <form role="form">
    <div class="form-group row">
        <label for="Name" class="col-md-2 col-form-label">이름</label>

        <div class="col-md-10">
            <input type="text" class="form-control" placeholder="이름">
        </div>
    </div>
    <div class="form-group row">
        <label for="emailaddress" class="col-md-2 control-label">이메일</label>
        <div class="col-md-10">
            <input type="email" class="form-control" placeholder="이메일">
        </div>
      </div>
    <div class="form-group row">
        <div class="offset-md-2 col-md-10">
            <button type="submit"> 확인</button>
        </div>
    </div>
</body>
</html>