<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>제목</th>
			<th>${detail.title}</th>
		</tr>
		<tr>
			<td>시작일</td>
			<td>종료일</td>
			<td>현재인원</td>
		</tr>
		<tr>
			<td>${detail.start_date}"</td>
			<td>${detail.end_date}"</td>
			<td>${detail.tocnt}/${detail.max_cnt}</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td>아이디</td>
			<td>신청일</td>
			<td>신청상태</td>
			<td>처리</td>
		</tr>
		<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.id}</td>
			<td>${list.after_date}"</td>
			<td>${list.state}</td>
			<td></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>