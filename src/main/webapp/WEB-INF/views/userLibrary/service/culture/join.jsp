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
<h3>join page</h3><br>
<form action = "join" method = "POST">
<table border = "1">
<input type = "hidden" name = "anum" value = "${cultureVO.num }">
	<tr>
		<td>[${cultureVO.cselect }] 이벤트 신청서</td>
	</tr>
	<tr>
		<td>ID :<input type = "text" name = "id" value = "${cultureVO.id }" readonly></td>
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