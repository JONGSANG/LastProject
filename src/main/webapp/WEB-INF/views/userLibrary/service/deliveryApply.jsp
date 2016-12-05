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
		<th><img src="/resources/book_img/${delivery.bNo}.jpg"></th>
		<th>책번호</th>
		<td>${delivery.bNo}</td>
		<th>책제목</th>
		<td>${delivery.bTitle}</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${delivery.phone}</td>
		<th>주소</th>
		<td>${delivery.address}</td>
	</tr>
</table>
	<a href="/userLibrary/service/deliveryApplys?bNo=${delivery.bNo}&bTitle=${delivery.bTitle}&phone=${delivery.phone}&address=${delivery.address}">신청하기</a>
</body>
</html>