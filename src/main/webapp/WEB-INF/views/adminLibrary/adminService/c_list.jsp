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
			<th>번호</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>현재인원</th>
		</tr>
		<c:forEach items="${culture}" var="culture">
		<tr>
			<td>${culture.num}</td>
			<td>${culture.cselect}</td>
			<td><a href="/adminLibrary/adminService/a_detail?num='${culture.num}'">${culture.title}</a>
			<td>${culture.tocnt}/${culture.max_cnt}</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:if test="${pageMaker.prev}">
		<li><a
			href="c_list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="c_list${pageMaker.makeQuery(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="c_list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if>
</body>
</html>