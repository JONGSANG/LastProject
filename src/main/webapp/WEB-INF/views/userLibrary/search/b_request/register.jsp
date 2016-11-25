<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>희망도서신청</title>
</head>
<body>
<section>
	<div id="word">
	<font style="font-size: 40px">희망도서신청</font>
	</div>
	<div id="link"><div id="link26"><a href = "/" >home ></a><a href = "#" >검색 >&nbsp;</a></div><b>희망도서신청</b></div>
	</section>
	<div id="insidebody">
<form role="form" method="post">
	<table border="1">
		<tr>
			<th width="80">책 제목</th>
			<th><input type="text" name='bName' >
		</tr>
		<tr>
			<th width="80">저자 명</th>
			<th><input type="text" name='bWriter' >
		</tr>
		<tr>
			<th width="80">출판사</th>
			<th><input type="text" name='bCompany' >
		</tr>
		<tr>
			<th width="80">출간년도</th>
			<th><input type="text" name='bYear' placeholder="ex) 2015">
		</tr>
		<tr>
			<th>희망 사유(책 소개)</th>
			<th><textarea name="bIntro" rows="3" placeholder="Enter ..."></textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" value="${ id }" readonly="readonly"></th>
		</tr>
		<tr>
			<th colspan="2"><button type="submit">확인</button>
		</tr>
	</table>
</form>
</div>
</body>
</html>