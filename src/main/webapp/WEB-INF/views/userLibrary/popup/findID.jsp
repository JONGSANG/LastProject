<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	var a='${faller}';
	
    if(a=='faller'){
    	alert("일치하는 정보가 없습니다. 다시 입력해주세요");
    }
	</script>
</head>
<body>
	<p>찾으시려는 아이디의 정보를 입력해주세요
	<form method="post">
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="이름" required><br>
		<label for="email">이메일</label>
		<input type="email" id="email" name="email" required><br>
		<label for="birth">생년월일</label>
		<input type="date" id="birth" name="birth" required="required"><br>
		<input type="submit" value="아이디 찾기">
		<input type="reset" value="다시쓰기">
	</form>
</body>

</html>