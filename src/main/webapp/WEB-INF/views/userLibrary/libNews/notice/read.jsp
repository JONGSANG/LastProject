<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div style = "float:right; font-size:13px; ">
	<a href = "/" style="text-decoration:none; color:gray;">home ></a><a href = "#" style="text-decoration:none; color:gray;">도서관소식 >&nbsp;</a><b style="color: navy;">공지사항</b>
	</div><br><br>
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
</body>
</html>