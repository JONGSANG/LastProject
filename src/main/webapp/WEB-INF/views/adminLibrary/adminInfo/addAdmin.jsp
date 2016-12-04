<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- 데이트픽커 -->
<script src="/resources/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="/resources/css/adminLibrary/datepicker3.css">
</head>
<body>
<form method="post">
		<label for="id">ID</label>
		<input type="text" id="id" name="id" placeholder="최대 12자 영문/숫자" maxlength="12" autofocus required>
		<input type="button" id="result" value="ID중복확인"><br>
		<label for="pwd">비밀번호</label>
		<input type="password" id="pwd" name="pwd" placeholder="최대 12자 영문/숫자" maxlength="12" required><br>
		<label for="repwd">비밀번호 확인</label>
		<input type="password" id="repwd" name="repwd" placeholder="비밀번호 확인" maxlength="12" required>
		<font id="check" color="red"></font><br>
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="이름" required><br>
		<label for="birth">생년월일</label>
		<input type="date" id="birth" name="birth" required="required"><br>
		<label for="gender">성별</label>
		남성 <input type="radio" name="gender" value="1" checked="checked">
		여성 <input type="radio" name="gender" value="2" ><br>
		<label for="phone">휴대전화번호</label>
		<select name="phone1">
			<option value="010" selected>010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
		</select> - 
		<input type="number" name="phone2" pattern=".{3,4}" placeholder="3~4자리 숫자" maxlength="4" required> - 
		<input type="number" name="phone3" pattern=".{4,4}" placeholder="4자리 숫자" maxlength="4" required><br>
		<label for="email">이메일</label>
		<input type="email" id="email" name="email" required><br>
		<label for="address">주소</label>
		<input type="text" id="address" name="address" placeholder="서울" required><br>
		<label for="j_part">부서</label>
		<select name="j_part">
			<option>행정지원과</option>
			<option>정보자료과</option>
			<option>독서문화진흥과</option>
			<option>평생학습지원과</option>
			<option>정보봉사과</option>
		</select><br>
		<label for="j_level">직급</label>
		<select	name="j_level">
			<option>도서관장</option>
			<option>과장</option>
			<option>담당팀장</option>
			<option selected="selected">직원</option>
		</select><br>
		<button type="submit" id="submit" value="관리자 추가">관리자 추가</button>
		<input type="reset" value="다시쓰기">
	</form>
	<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="/adminLibrary"><b>Kosta</b> Library</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">관리자 계정 추가</p>

    <form action="../../index.html" method="post">
      <div class="form-group has-feedback">
        <input type="text" id="id" name="id" class="form-control" style="padding-right: 0" placeholder="아이디를 입력해 주세요. (최대 12자 영문/숫자)" autofocus required>
        <button type="button" id="result" class="btn btn-block btn-success" value="ID중복확인">ID중복확인</button>
      </div>
      <div class="form-group has-feedback">
        <input type="password" style="padding-right: 0" id="pwd" name="pwd" class="form-control" placeholder="비밀번호를 입력해주세요.(최대 12자 영문/숫자)" required>
      </div>
      <div class="form-group has-feedback">
        <input type="password" style="padding-right: 0" id="repwd" name="repwd" class="form-control" placeholder="비밀번호 확인" required>
      </div>
       
       <div class="form-group has-feedback">
        <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" id="birth" name="birth" class="form-control pull-right" id="datepicker" placeholder="생년월일을 입력해주세요." required>
                </div>
      </div>
        <div class="form-group has-feedback">
        <input type="text" class="form-control" style="padding-right: 0" id="name" name="name" placeholder="이름을 입력해 주세요." required>
      </div>
      
        <div class="form-group has-feedback">
        남성 <input type="radio" name="gender" value="1" checked="checked">
		여성 <input type="radio" name="gender" value="2" >
      </div>
      
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> I agree to the <a href="#">terms</a>
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript"> //Date picker
$('#datepicker').datepicker({
    autoclose: true
  });</script>

</body>
</body>
</html>