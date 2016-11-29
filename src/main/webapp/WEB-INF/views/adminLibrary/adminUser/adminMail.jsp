<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table>
			<tr>
				<th>제목</th>
				<th><input type="text" name="subject"></th>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="20" cols="105" name="text"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="단체메일발송">
	</form>
</body>
</html>