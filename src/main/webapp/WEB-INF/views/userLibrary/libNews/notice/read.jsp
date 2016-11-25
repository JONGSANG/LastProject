<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
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
	<form role="form" method="post">

		<input type='hidden' name='num' value="${noticeVO.num}">

	</form>

	<h2>상세보기 페이지</h2>

	<table border="1">
		<tr>
			<th>제목</th>
			<th><input type="text" name='title' class="form-control"
				value="${noticeVO.title}" readonly="readonly">
		</tr>
		<tr>
			<th>내용</th>
			<th><textarea class="form-control" name="content" rows="3"
					readonly="readonly">${noticeVO.content}</textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" class="form-control"
				value="${noticeVO.id}" readonly="readonly"></th>
		</tr>
		<tr>
			<th colspan="2">
				<button type="button"
					onclick="location.href='modify?num=${noticeVO.num}'">수정</button>
				<button type="button"
					onclick="location.href='remove?num=${noticeVO.num}'">삭제</button> <a
				href='listAll'><button type="submit">목록보기</button></a>
			</th>
		</tr>

	</table>
	</div>
</body>
</html>