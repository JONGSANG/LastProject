<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>문화 행사</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">문화 행사</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>문화 행사</b>
		</div>
	</section>
<h3>culture_read page</h3><br>
	<table border = "1">
		<tr>
			<th>글번호 : ${cultureVO.num }</th>
			<th>글쓴날짜 : ${cultureVO.write_date }</th>
		</tr>
		<tr>
			<td>시작날짜 : ${cultureVO.start_date }</td>
			<td>끝나는날짜 : ${cultureVO.end_date }</td>
		</tr>
		<tr>
			<td>최대인원수 : ${cultureVO.max_cnt }</td>
			<td>현제인원수 : ${cultureVO.tocnt }</td>
		</tr>
		<tr>
			<th colspan = "2" align = "left">제목 : (${cultureVO.cselect})  ${cultureVO.title }</th>
		</tr>
		<tr>
			<th colspan = "2" align = "left">내용 : ${cultureVO.content }</th> 
		</tr>
	</table><br>
<form action = "modify", method = "GET">
	<input type = "hidden" name = "num" value = "${cultureVO.num }">
	<input type = "submit" value = "수정">
</form>
<c:if test="${cultureVO.tocnt != cultureVO.max_cnt }">
<input type = "button" value = "신청하기" onclick = "location.href ='/userLibrary/service/culture/join?num=${cultureVO.num}'">
</c:if>
<input type = "button" value = "목록으로" onclick = "location.href='list'">
<form action = "delete", method = "POST">
	<input type = "hidden" name = "num" value = "${cultureVO.num }">
	<input type = "submit" value = "삭제">
</form>
</body>
</html>