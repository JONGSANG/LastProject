<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	var noid='${noid}';
	var al='${al}';
	
    if(noid=='noid'){
    	alert("일치하는 정보가 없습니다. 다시 입력해주세요");
    }
    if(al=='al'){
    	alert("이미 사용중인 좌석이 있습니다")
    }
</script>
</head>
<body>
<p>선택하신 좌석은 ${num}번 좌석입니다
<form action="/userStudyRoom/insert" method="get">
<input type="hidden" name="num" value="${num}">
<input type="text" name="id" placeholder="아이디를 입력하거나 회원증을 스캔해주세요">
<input type="submit" value="열람실 사용" onclick="opener.location.reload()">
</form>
</body>
</html>