<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<form role="form" method="post">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" placeholder="Enter id"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' placeholder="Enter Title">
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea name="content" rows="3" placeholder="Enter ..."></textarea></th>
			</tr>
			<tr>
				<th colspan="2"><button type="submit">Submit</button>
			</tr>
		</table>
	</form>

</body>
</html>