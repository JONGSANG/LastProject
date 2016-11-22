<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<br>
<h3>culture_write page</h3><br>
<form method = "POST">
ID : <input type = "text" name = "id" value = "${cultureVO.id }" readonly> <br>
<select name = "cselect" required="required">
	<option value = "">카테고리</option>
	<option value = "외국인맞고">외국인맞고</option>
	<option value = "외국인포커">외국인포커</option>
	<option value = "외국인고스톱">외국인고스톱</option>
	<option value = "외국인체스">외국인체스</option>
</select>TITLE : <input type = "text" name = "title" required="required"><br>
Max count : <input type = "text" name = "max_cnt" required="required"><br>
Content : <input type = "text" name = "content" required="required"><br>
Start_date : <input type = "date" name = "start_date" required="required">&nbsp;&nbsp;End_date : <input type = "date" name = "end_date" required="required">
<input type = "submit" value = "만들기"><input type = "reset" value = "취소">
</form>
</body>
</html>
</body>
</html>