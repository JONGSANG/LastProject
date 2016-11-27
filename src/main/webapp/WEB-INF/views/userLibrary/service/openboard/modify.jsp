<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>modify</title>
</head>
<body>
<br>
<h3>modify page</h3><br>
<form method = "POST" enctype="multipart/form-data" >
<table border = "1">
	<tr>
		<td>글번호 : <input type = "text" name = "num" value = "${o_BoardVO.num }" readonly></td>
	</tr>
	<tr>
		<td>ID : <input type = "text" name = "id" value = "${o_BoardVO.id }" readonly></td>
	</tr>
	<tr>
		<td>글 제목 : <input type = "text" name = "title" value = "${o_BoardVO.title }"  required="required"></td>
	</tr>
	<tr>
		<td>글 내용 : <input type = "text" name = "content" value = "${o_BoardVO.content }"  required="required"></td>
	</tr>
	<tr>
		<td><input type = "file" name = "file" required="required"></td>
	</tr>
</table>
<input type = "hidden" name = "newname" value = "${o_BoardVO.newname }">
<input type = "submit" value = "수정하기"><input type = "reset" value = "취소">
</body>
</html>