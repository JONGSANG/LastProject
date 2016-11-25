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
	<form action="modify" method="post">

	<table border="1">
		<tr>
			<th>번호</th>
			<th><input type="text" name='num' class="form-control"
				value="${boardVO.num}" readonly="readonly"></th>
		</tr>
		<tr>
			<th>제목</th>
			<th><input type="text" name='bName' class="form-control"
				value="${boardVO.bName}"></th>
		</tr>

		<tr>
			<th width="80">저자 명</th>
			<th><input type="text" name='bWriter' class="form-control"
				value="${boardVO.bWriter}">
		</tr>
		<tr>
			<th width="80">출판사</th>
			<th><input type="text" name='bCompany' class="form-control"
				value="${boardVO.bCompany}">
		</tr>
		<tr>
			<th width="80">출간년도</th>
			<th><input type="text" name='bYear' placeholder="ex) 2015" class="form-control"
				value="${boardVO.bYear}">
		</tr>
		<tr>
			<th>희망 사유(책 소개)</th>
			<th><textarea class="form-control" name="bIntro" rows="3">${boardVO.bIntro}</textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" class="form-control"
				value="${boardVO.id}"></th>
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