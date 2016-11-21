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
			<th>책제목
			<th>작가명
			<th>출판사
			<th>출판년도
			<th>신청일
			<th>신청결과
		</tr>
		<c:forEach items="${hope}" var="hope">
		<tr>
			<td>${hope.bName}
			<td>${hope.bWriter}
			<td>${hope.bCompany}
			<td>${hope.bYear}
			<td><fmt:formatDate value="${hope.hope_Date}" pattern="yyyy.MM.dd"/>
			<c:if test="${hope.result==1}">
				<td>입고완료
			</c:if>
			<c:if test="${hope.result==0}">
				<td>신청중
			</c:if>
			<c:if test="${hope.result==-1}">
				<td>신청거절
			</c:if>
		</tr>
		</c:forEach>
	</table>
</body>
</html>