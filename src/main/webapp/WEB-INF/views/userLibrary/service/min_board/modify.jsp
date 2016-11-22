<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>민원 게시판</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">민원 게시판</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>민원 게시판</b>
		</div>
	</section>
	<h2>수정 페이지</h2>
	<form action="modify" method="post">
		<table border="1">
			<tr>
				<th>번호</th>
				<th><input type="text" name='num' class="form-control"
					value="${boardVO.num}" readonly="readonly"></th>
			</tr>
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" class="form-control"
					value="${boardVO.id}"></th>
			</tr>
			<tr>
				<th>민원 종류</th>
				<th><input type="text" name="mselect" class="form-control"
					value="${boardVO.mselect}"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' class="form-control"
					value="${boardVO.title}"></th>
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea></th>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit">등록</button>
					<button type="reset">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>