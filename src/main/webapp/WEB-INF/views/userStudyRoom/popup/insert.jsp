<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p>선택하신 좌석은 ${num}번 좌석입니다
<form action="/userStudyRoom/insert" method="post">
<input type="hidden" name="num" value="${num}">
<input type="text" name="id" placeholder="아이디를 입력하거나 회원증을 스캔해주세요">
<input type="submit" value="열람실 사용" onclick="">
</form>
</body>
</html>