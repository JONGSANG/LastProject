<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>책 제목
			<th>예약일
			<th>반납예정일
			<th>예약만료일
			<th>예약순위
			<th>상태
			<th>취소
		</tr>
		<c:forEach items="${reserve}" var="reserve" >
		<tr>
			<td>${reserve.btitle}
			<td>${reserve.reserve_date}
			<td>${reserve.submit_date}
			<td>구현예정
			<td>구현예정
			<c:if test="${reserve.brent==1}">
			<td>대출중
			</c:if>
			<td><a href="">취소</a>
		</tr>
		</c:forEach>
	</table>
</body>
</html>