<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
		남성 <input type="radio" name="gender" value="남" checked="checked">
		여성 <input type="radio" name="gender" value="여" ><br>
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
			<option>정보봉사과ㅏ</option>
		</select><br>
		<label for="j_level">직급</label>
		<select	name="j_level">
			<option>도서관장</option>
			<option>과장</option>
			<option>담당팀장</option>
			<option>직원</option>
		</select><br>
		<button type="submit" id="submit" value="관리자 추가">관리자 추가</button>
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html>