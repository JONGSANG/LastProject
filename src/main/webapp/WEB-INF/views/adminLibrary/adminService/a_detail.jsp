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
			<th>${detail.id}</th>
		</tr>
		<tr>
			<td>시작일</td>
			<td>종료일</td>
			<td>현재인원</td>
		</tr>
		<tr>
			<td><fmt:formatDate value="${detail.start_date}" pattern="yyyy.MM.dd"/></td>
			<td><fmt:formatDate value="${detail.end_date}" pattern="yyyy.MM.dd"/></td>
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
		<c:forEach items="${id}" var="id">
		<tr>
			<td>${id.id}</td>
			<td>${id.after_date}</td>
			<td>${id.state}</td>
			<td>임시</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>