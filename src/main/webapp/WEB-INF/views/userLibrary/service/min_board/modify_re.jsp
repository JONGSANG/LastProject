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
	<div id="insidebody">
	<h2>수정 페이지</h2>
	<form action="modify_re" method="post">
		<input type="hidden" name="num" value="${boardVO2.num}"> 
		<input type="hidden" name="mnum" value="${boardVO2.mnum}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name='id' class="form-control"
					value="${boardVO2.id}" readonly="readonly"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' class="form-control"
					value="${boardVO2.title}"></th>
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea class="form-control" name="content" rows="3">${boardVO2.content}</textarea></th>
			</tr>
			<tr>
				<th colspan="2"><button type="submit" value="수정" >수정</button>
					<button type="reset">취소</button></th>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>