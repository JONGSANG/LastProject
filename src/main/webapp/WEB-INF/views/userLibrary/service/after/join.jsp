<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신청서</title>
</head>
<body>
<br>
<h3>join page</h3><br>
<form action = "join" method = "POST">
<table border = "1">
<input type = "hidden" name = "anum" value = "${afterVO.num }">
	<tr>
		<td>[${afterVO.aselect }] 이벤트 신청서</td>
	</tr>
	<tr>
		<td>ID :<input type = "text" name = "id" value = "${afterVO.id }" readonly></td>
	</tr>
	<tr>
		<td>주의 : 한번 신청하게되면 취소가 불가하오니<br>
		신중히 신청해주시기 바랍니다.</td>
	</tr>
</table>
<input type = "submit" value = "신청하기">
</form>

</body>
</html>