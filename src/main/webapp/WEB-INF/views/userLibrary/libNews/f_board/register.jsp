<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">자유게시판</font>
		</div>
		<div id="link">
			<div id="link55">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>자유게시판</b>
		</div>
	</section>
	<div id="insidebody">
<form role="form" method="post">
	<table border="1">
		<tr>
			<th width="80">제목</th>
			<th><input type="text" name='title' placeholder="Enter Title">
		</tr>
		<tr>
			<th>내용</th>
			<th><textarea name="content" rows="3" placeholder="Enter ..."></textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" value="${ id }" placeholder="Enter id"></th>
		</tr>
		<tr>
			<th colspan="2"><button type="submit">확인</button>
		</tr>
	</table>
</form>
</div>
</body>
</html>