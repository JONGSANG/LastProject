<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	var false='${false}';
	
    if(false=='false'){
    	alert("비밀번호가 맞지 않습니다");
    }
	</script>
<title>개인정보 수정</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">개인정보 수정</font>
		</div>
		<div id="link">
			<div id="link37">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>개인정보 수정</b>
		</div>
	</section>
	<div id="insidebody">
	<form action="/userLibrary/myInfo/modifyCheck" method="post">
		<p>안전한 개인정보 보호를 위해 비밀번호를 한번 더 입력해주세요</p>
		<input type="password" name="password" placeholder="최대 12자 영문/숫자" maxlength="12" required>
		<input type="submit" value="수정하기">
	</form>
	</div>
	
</body>
</html>