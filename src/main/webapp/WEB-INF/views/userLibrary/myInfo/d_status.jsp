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
			<th>책 제목
			<th>대출일
			<th>반납예정일
			<th>연체일수
			<th>상태
			<th>반납연기
		</tr>
		<c:forEach items="${rent}" var="rent" >
		<tr>
			<td>${rent.btitle}
			<td>${rent.rent_date}
			<td>${rent.submit_date}
			<td>구현예정
			<c:if test="${rent.brent==1}">
			<td>대출중
			</c:if>
			<td><a href="">반납연기</a>
		</tr>
		</c:forEach>
	</table>
</body>
</html>