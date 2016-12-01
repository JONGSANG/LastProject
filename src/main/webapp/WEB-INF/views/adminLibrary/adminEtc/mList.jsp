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
		<th>번호</th>
		<th>민원종류</th>
		<th>제목</th>
		<th>ID</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>
	<c:forEach items="${noReply}" var="noReply">
	<tr>
		<td>${noReply.num}</td>
		<td>${noReply.mselect}</td>
		<td><a href='mRead?num=${noReply.num}'>${noReply.title}<c:if test="${noReply.re_cnt != 0}">[ ${noReply.re_cnt} ]</c:if></a>
		</td>
		<td>${noReply.id}</td>
		<td><fmt:formatDate value="${noReply.min_date}" pattern="yyyy-MM-dd"/></td>
		<td>${noReply.viewcnt}</td>
	</tr>
	</c:forEach>
</table>
	<c:if test="${pageMaker_rep.prev}">
		<li><a
			href="mList${pageMaker_rep.makeQuery(pageMaker_rep.startPage-1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker_rep.startPage }" end="${pageMaker_rep.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker_rep.pageInfo.page == idx?'class =active':''}"/>>
			<a href="mList${pageMaker_rep.makeQuery(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker_rep.next && pageMaker_rep.endPage > 0}">
		<li><a
			href="mList${pageMaker_rep.makeQuery(pageMaker_rep.endPage+1) }">&raquo;</a></li>
	</c:if>
	
<table>
	<tr>
		<th>번호</th>
		<th>민원종류</th>
		<th>제목</th>
		<th>ID</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>
	<c:forEach items="${reply}" var="reply">
	<tr>
		<td>${reply.num}</td>
		<td>${reply.mselect}</td>
		<td><a href='mRead?num=${reply.num}'>${reply.title}<c:if test="${reply.re_cnt != 0}">[ ${reply.re_cnt} ]</c:if></a>
		</td>
		<td>${reply.id}</td>
		<td><fmt:formatDate value="${reply.min_date}" pattern="yyyy-MM-dd"/></td>
		<td>${reply.viewcnt}</td>
	</tr>
	</c:forEach>
</table>
<c:if test="${pagemaker1.prev}">
		<li><a
			href="mList${pagemaker1.multi(pagemaker1.startPage-1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker1.startPage }" end="${pageMaker1.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker1.pageInfo.page == idx?'class =active':''}"/>>
			<a href="mList${pageMaker1.multi(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker1.next && pageMaker1.endPage > 0}">
		<li><a
			href="mList${pagemaker1.multi(pagemaker1.endPage+1) }">&raquo;</a></li>
	</c:if>
</body>
</html>