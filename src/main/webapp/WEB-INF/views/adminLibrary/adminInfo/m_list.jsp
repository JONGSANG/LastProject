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
			<th>아이디
			<th>이름
			<th>생년월일
			<th>전화번호
			<th>가입일
			<th>회원등급
		</tr>
		<c:forEach items="${userList}" var="userList">
		<tr>
			<td>${userList.id}
			<td>${userList.name}
			<td>${userList.birth}
			<td>${userList.phone}
			<td><fmt:formatDate value="${userList.joinDate}" pattern="yyyy.MM.dd"/>
			<td>
			<c:if test="${userList.role=='ROLE_SEMIUSER'}">
				"준회원"
			</c:if>
			<c:if test="${userList.role=='ROLE_USER'}">
				"정회원"
			</c:if>
		</tr>
		</c:forEach>
	</table>

	<c:if test="${pageMaker.prev}">
		<li><a
			href="m_list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="m_list${pageMaker.makeQuery(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="m_list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if>
</body>
</html>