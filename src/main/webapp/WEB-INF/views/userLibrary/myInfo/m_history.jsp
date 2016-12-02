<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>민원 내역</title>
</head>
<body>
<table>
	<tr>
		<th>민원종류</th>
		<th>제목</th>
		<th>작성일자</th>
		<th>처리상태</th>
	</tr>
	<c:forEach items="${minResult}" var="minResult">
	<tr>
		<td>${minResult.mselect}</td>
		<td><a href='/userLibrary/service/min_board/read?num=${minResult.num}'>${minResult.title}</a></td>
		<td><fmt:formatDate value="${minResult.min_date}" pattern="yyyy-MM-dd"/></td>
		<c:if test="${minResult.re_cnt==0}">
		<td>처리중</td>
		</c:if>
		<c:if test="${minResult.re_cnt!=0}">
		<td>처리완료</td>
		</c:if>
	</tr>
	</c:forEach>
</table>
</body>
</html>