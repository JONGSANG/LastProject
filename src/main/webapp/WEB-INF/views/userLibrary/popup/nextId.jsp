<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var a='${faller}';
	
    if(a=='faller'){
    	alert("일치하는 정보가 없습니다. 다시 입력해주세요");
    }
	</script>
</head>

<!-- 	<p>찾으시려는 아이디의 정보를 입력해주세요
	<form method="post">
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="이름" required><br>
		<label for="email">이메일</label>
		<input type="email" id="email" name="email" required><br>
		<label for="birth">생년월일</label>
		<input type="date" id="birth" name="birth" required="required"><br>
		<input type="submit" value="아이디 찾기">
		<input type="reset" value="다시쓰기">
	</form> -->
	
	<div class="fineId">
	<table class="idheader">
		<tr>
			<td>
			<img alt="" src="/resources/images/login/login_01.png" width="50px" style="padding-top: 30px">
			<img alt="" src="/resources/images/login/login_02.png" height="50px"  style="padding-top: 30px">
			</td>
		</tr>
		<tr>
		<td height="30"><img src="/resources/images/login/login_21.gif" width="300px"></td>
		</tr>
		
		<tr>
		<td>
		<div class="nextText" style="width: 400px; padding-top: 23px">
		회원님께서 등록한 <font color="blue" style="font: bold;">이메일</font>로<br>
		<font color="red" style="font: bold;">아이디</font>를 전송하였습니다.
		</div>
		</td>
		</tr>
			<tr>
		<td><img alt="" src="/resources/images/login/login_21.gif" width="300px" style="padding-top: 30px"></td>
		</tr>
		<tr>
		<td height="50px" style="padding-top: 30px">
		<a href="javascript:window.close()">
		<button class="btn" value="확인">확인</button>
		</a>
		</td>
		</tr>
		<tr>
		<td height="24px"></td>
		</tr>
		</table>
	</div>
