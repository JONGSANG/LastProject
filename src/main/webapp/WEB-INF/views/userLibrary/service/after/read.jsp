<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>방과후 학교</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">방과후 학교</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>방과후 학교</b>
		</div>
	</section>
<h3>after_read page</h3><br>
	<table border = "1">
		<tr>
			<th>글번호 : ${afterVO.num }</th>
			<th>글쓴날짜 : ${afterVO.write_date }</th>
		</tr>
		<tr>
			<td>시작날짜 : ${afterVO.start_date }</td>
			<td>끝나는날짜 : ${afterVO.end_date }</td>
		</tr>
		<tr>
			<td>최대인원수 : ${afterVO.max_cnt }</td>
			<td>현제인원수 : ${afterVO.tocnt }</td>
		</tr>
		<tr>
			<th colspan = "2" align = "left">제목 : (${afterVO.aselect})  ${afterVO.title }</th>
		</tr>
		<tr>
			<th colspan = "2" align = "left">내용 : ${afterVO.content }</th> 
		</tr>
	</table><br>
<form action = "modify", method = "GET">
	<input type = "hidden" name = "num" value = "${afterVO.num }">
	<input type = "submit" value = "수정">
</form>
<c:if test="${afterVO.tocnt != afterVO.max_cnt }">
<input type = "button" value = "신청하기" onclick = "location.href ='/userLibrary/service/after/join?num=${afterVO.num}'">
</c:if>
<input type = "button" value = "목록으로" onclick = "location.href='list'">
<form action = "delete", method = "POST">
	<input type = "hidden" name = "num" value = "${afterVO.num }">
	<input type = "submit" value = "삭제">
</form>
</body>
</html>