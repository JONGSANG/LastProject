<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div id="insidebody">
<h3>after_write page</h3><br>
<form method = "POST" enctype="multipart/form-data">
ID : <input type = "text" name = "id" value = "${afterVO.id }" readonly> <br>
<select name = "aselect" required="required">
	<option value = "">카테고리</option>
	<option value = "맞고">맞고</option>
	<option value = "포커">포커</option>
	<option value = "고스톱">고스톱</option>
	<option value = "체스">체스</option>
</select>TITLE : <input type = "text" name = "title" required="required"><br>
Max count : <input type = "text" name = "max_cnt" required="required"><br>
Content : <input type = "text" name = "content" required="required"><br>
Start_date : <input type = "date" name = "start_date" required="required" >&nbsp;&nbsp;End_date : <input type = "date" name = "end_date" required="required"><br>
imgfile : <input type = "file" name = "file" required = "required" accept = "image/gif, image/jpeg, image/png"><br>
<input type = "submit" value = "만들기"><input type = "reset" value = "취소">
</form>
</div>
</body>
</html>