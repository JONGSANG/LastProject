<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div id="insidebody">
<h3>modify page</h3><br>
<form method = "POST" enctype="multipart/form-data">
<table border = "1">
	<tr>
		<td>이벤트번호 : ${cultureVO.num }</td>
	</tr>
	<tr>
		<td>ID : ${cultureVO.id }</td>
	</tr>
	<tr>
		<td>[ <select name = "cselect" required="required">
				<option value = "">카테고리</option>
				<option value = "외국인맞고">외국인맞고</option>
				<option value = "외국인포커">외국인포커</option>
				<option value = "외국인고스톱">외국인고스톱</option>
				<option value = "외국인체스">외국인체스</option>
			</select> ] - TITLE : <input type = "text" name = "title" value="${cultureVO.title }" required="required"></td>
	</tr>
	<tr>
		<td>Max count : <input type = "text" name = "max_cnt" value = "${cultureVO.max_cnt }" required="required"></td>
	</tr>
	<tr>
		<td>Content : <input type = "text" name = "content" value="${cultureVO.content }" required="required"></td>
	</tr>
	<tr>
		<td>Start_date : <input type = "date" name = "start_date" required="required">&nbsp;&nbsp;End_date : <input type = "date" name = "end_date" required="required"></td>
	</tr>
	<tr>
		<td>imgfile : <input type = "file" name = "file" required = "required" accept = "image/gif, image/jpeg, image/png"></td>
	</tr>
</table>
<input type = "hidden" name = "newname" value = "${cultureVO.newname }">
<input type = "submit" value = "수정하기"><input type = "reset" value = "취소">
</form>
</div>
</body>
</html>