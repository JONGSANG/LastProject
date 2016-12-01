<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<th colspan="2">좌석정보</th>
	</tr>
	<tr>
		<td>좌석번호</td>
		<td>${detail.num}</td>
	</tr>
	<tr>
		<td>사용자ID(이름)</td>
		<td>${detail.id}(${detail.name})</td>
	</tr>
	<tr>
		<td>시작시간</td>
		<td>${detail.start_time}</td>
	</tr>
	<tr>
		<td>종료시간</td>
		<td>${detail.end_time}</td>
	</tr>
	<tr>
		<td colspan="2">
		<form action="/adminLibrary/delete" method="get">
			<input type="hidden" name="num" value="${detail.num}">
			<input type="submit" value="좌석 취소" onclick="opener.location.reload()">
		</form>
		</td>
	</tr>
</table>
</body>
</html>