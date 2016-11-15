<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="/userLibrary/myInfo/leave" method="post">
		<p>회원을 탈퇴하시겠습니까? 회원탈퇴시 개인정보는 모두 삭제됩니다
		<p>비밀번호를 입력후 탈퇴버튼을 누르면 회원탈퇴가 진행됩니다<br>
		<input type="password" name="password" placeholder="최대 12자 영문/숫자" maxlength="12" required>
		<input type="submit" value="탈퇴">
	</form>
</body>
</html>