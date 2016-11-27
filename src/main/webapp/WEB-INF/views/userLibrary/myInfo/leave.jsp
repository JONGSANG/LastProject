<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">회원 탈퇴</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>회원 탈퇴</b>
		</div>
	</section>
	<div id="insidebody">
	<form action="/userLibrary/myInfo/modifyCheck" method="post">
	<table>
	<tr>
	<td style="padding-top: 10px"><img src="/resources/images/word/modifycheck.png"></td>
	<td><img src="/resources/images/word/leave.png"></td>
	</tr>
	<tr>
	<td style="height: 30px"></td>
	</tr>
	<tr>
	<td>&nbsp;<img src="/resources/images/login/login_722.png" height="30"></td>
	<td>
		&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="최대 12자 영문/숫자" maxlength="12" required>
		<button type="submit" id="submit">탈퇴하기</button>
	</td>
	</tr>
	</table>
	</form>
	</div>
</body>
</html>