<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	var fail='${fail}';
	
    if(fail=='fail'){
    	alert("비밀번호가 맞지 않습니다");
    }
</script>
<title>관리자정보 수정</title>
</head>
<body>
	<form method="post">
		<p>초기 아이디를 발급받은 관리자는 반드시 비밀번호를 변경해주세요</p>
		<p>안전을 위해 비밀번호를 한번 더 입력해주세요</p>
		<input type="password" name="password" placeholder="최대 12자 영문/숫자" maxlength="12" required>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>