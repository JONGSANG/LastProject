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
<form action = "join" method = "POST">
<input type = "hidden" name = "anum" value = "${afterVO.num }">
	<table>
	<tr>
	<td style="padding-top: 10px" ><img src="/resources/images/word/modifycheck.png"></td>
	<td><img src="/resources/images/word/ask.png"></td>
	</tr>
	<tr>
	<td style="height: 30px"></td>
	</tr>
	<tr>
	<td>&nbsp;<img src="/resources/images/login/login_711.png" height="30"></td>
	<td>
		&nbsp;&nbsp;&nbsp;<input type = "text" name = "id" value = "${afterVO.id }" readonly>
		<button type="submit" id="submit">신청하기</button>
	</td>
	</tr>
	</table>
	</form>

</div>
</body>
</html>