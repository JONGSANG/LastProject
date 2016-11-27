<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>openboard write</h3>
<form method = "POST" enctype="multipart/form-data"  >
	ID : <input type = "text" name = "id" value = "${o_BoardVO.id}" readonly><br>
	Title : <input type = "text" name = "title"  required="required"><br>
	content : <input type = "text" name = "content"  required="required"><br>
	File : <input type = "file" name = "file"  required="required"><br>
	<input type = "submit" value = "만들기">
</form>
</body>
</html>