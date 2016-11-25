<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">공지사항</font>
		</div>
		<div id="link">
			<div id="link54">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>공지사항</b>
		</div>
	</section>
	<div id="insidebody">
	<form action="modify" method="post">
		<table border="1">
			<tr>
				<th>번호</th>
				<th><input type="text" name='num' class="form-control"
					value="${noticeVO.num}" readonly="readonly"></th>
			</tr>
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" class="form-control"
					value="${noticeVO.id}"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' class="form-control"
					value="${noticeVO.title}"></th>
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea class="form-control" name="content" rows="3">${noticeVO.content}</textarea></th>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit">저장</button>
					<button type="reset">취소</button>
				</th>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>