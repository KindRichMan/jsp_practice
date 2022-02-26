<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<style>
.form-control{
width: 300px
}
</style>
     <!-- 폼을 만들어주세요. 폼의 목적지는 join_check.jsp 입니다. 
     userinfo 테이블에 작성된대로 아이디, 비밀번호, 이름, 이메일을 가입요소로 받습니다.
     name속성까지 맞춰주시고, submit버튼까지 함게 작성해주세요.-->
     
     <fieldset>
     <legend>회원가입 페이지</legend>
     <form action="join_check.jsp" method="post">
     <input type="text" name="id" placeholder="아이디" required><br/>
     <input type="password" name="pw" placeholder="비밀번호" required><br/>
     <input type="text" name="name" placeholder="이름" required><br/>
     <input type="email" name="email" placeholder="이메일"><br/>
     <h5>요구사항</h5>
    <textarea rows="3" class="form-control"name="int"placeholder="메세지를 입력하세요"></textarea>
     <input type="submit" value="회원가입">
     <input type="reset" value="초기화">
     </form>
     </fieldset>
 
 
 
 
 <div class="container">

    <h4 class="text-primary"> 기본적인 HTML5의 폼 형식</h4>
    <h5> input type="text"</h5>
    <input type="text" class="form-control">
    <h5> input type="password"</h5>
    <input type="password" class="form-control">
    <h5> input type="datetime"</h5>
    <input type="datetime" class="form-control">
    <h5> input type="datetime-local"</h5>
    <input type="datetime-local" class="form-control">
    <h5> input type="date" </h5>
    <input type="date" class="form-control">
    <h5>input type="month"</h5>
    <input type="month" class="form-control">
    <h5>input type="time"</h5>
    <input type="time" class="form-control">
    <h5> type="week"</h5>
    <input type="week" class="form-control">
    <h5> textarea</h5>
    <textarea rows="5" class="form-control"></textarea>

    <h5> input type="checkbox"</h5>
    <div class="checkbox">
      <label>
        <input type="checkbox" value="">
        여기는 체크박스가 적용되는 곳입니다.
      </label>
    </div>
    <div class="checkbox">
      <label>
        <input type="checkbox" value="">
        체크박스는 다중 선택이 가능합니다.
      </label>
    </div>

    <h5> input type="radio"</h5>
    <div class="radio">
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
        여기는 라디오 속성이 적용되는 곳입니다.
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        라디오 속성은 여러 개 중 하나를 선택할 경우 사용합니다.
      </label>
    </div>

    <h5> 인라인 체크 박스 label class="checkbox-inline"</h5>
    <label class="checkbox-inline">
      <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
    </label>

    <h5> 인라인 라디오 label class="radio-inline"</h5>
    <label class="radio-inline">
      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> r1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> r2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> r3
    </label>


    <h5> select는 기본값과 multiple 적용이 가능합니다.</h5>
    <select class="form-control">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
    <br>
    <select multiple class="form-control">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
    <h5>폼에 텍스트를 삽입 하기 위해선 p class="form-control-static" 속성을 적용한다. </h5>
    <form role="form">
      <div class="form-group row">
        <label class="col-sm-2 col-lg-2">이메일</label>
        <div class="col-sm-10 col-lg-10">
          <p class="form-control-static">email@example.com</p>
        </div>
      </div>
      <div class="form-group row">
        <label for="Password" class="col-sm-2 col-lg-2">비밀번호</label>
        <div class="col-sm-10 col-lg-10">
          <input type="password" class="form-control" id="inputPassword" placeholder="Password">
        </div>
      </div>
    </form>
    <h5>form-control-static을 적용하지 않을 경우 텍스트가 label 부분과의 정렬이 틀어진다. </h5>
    <form role="form">
      <div class="form-group row">
        <label class="col-sm-2 col-lg-2 control-label">이메일</label>
        <div class="col-sm-10 col-lg-10">
          <p>email@example.com</p>
        </div>
      </div>
    </form>

    <h5> input 부분이 disabled 상태일 때</h5>
    <input type="text" class="form-control" disabled placeholder="이 부분은 disabled 상태입니다.">

    <hr>
    <form role="form">
      <fieldset>
        <legend>기본정보 </legend>
        <div class="form-group form-row">
          <label for="Name" class="col-xs-2 col-lg-2">이름</label>
          <div class="col-xs-10 col-lg-10">
            <input type="text" class="form-control" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
          <label for="email" class="col-xs-2 col-lg-2">이메일</label>
          <div class="col-xs-10 col-lg-10">
            <input type="email" class="form-control" placeholder="이메일">
          </div>
        </div>
      </fieldset>
      <fieldset disabled>
        <legend>부가정보 </legend>
        <div class="form-group">
          <label for="address" class="col-xs-2 col-lg-2">주소</label>
          <div class="col-xs-10 col-lg-10">
            <input type="text" class="form-control" placeholder="주소">
          </div>
        </div>
      </fieldset>
    </form>

    <hr>

    <h5> form-control-lg, 기본값, form-control-sm 일 경우 크기 비교 </h5>
    <input type="text" class="form-control form-control-lg" placeholder="form-control-lg"> <br>
    <input type="text" class="form-control" placeholder="기본값"> <br>
    <input type="text" class="form-control form-control-sm" placeholder="form-control-sm">


    <hr>
    <h5> 그리드 시스템을 이용해서 컬럼 크기 조절 </h5>
    <div class="row">
      <div class="col-sm-2 col-lg-2">
        <input type="text" class="form-control" placeholder="col-sm-2 col-lg-2">
      </div>
      <div class="col-sm-3  col-lg-3">
        <input type="text" class="form-control" placeholder="col-sm-3  col-lg-3">
      </div>
      <div class="col-sm-4  col-lg-4">
        <input type="text" class="form-control" placeholder="col-sm-4  col-lg-4">
      </div>
    </div>


    <div style="height:100px"></div>
  </div>
</body>
</html>