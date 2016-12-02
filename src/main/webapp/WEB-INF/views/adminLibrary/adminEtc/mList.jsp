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
<h3>대기중인 민원</h3>
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
	<c:if test="${multiPageMaker.prev}">
		<li><a
			href="mList${multiPageMaker.multi(multiPageMaker.startPage-1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${multiPageMaker.startPage }" end="${multiPageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${multiPageMaker.multiPageInfo.page == idx?'class =active':''}"/>>
			<a href="mList${multiPageMaker.multi(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${multiPageMaker.next && multiPageMaker.endPage > 0}">
		<li><a
			href="mList${multiPageMaker.multi(multiPageMaker.endPage+1) }">&raquo;</a></li>
	</c:if>
	
<h3>처리완료 민원</h3>
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
<c:if test="${multiPageMaker.prev1}">
		<li><a
			href="mList${multiPageMaker.multi(multiPageMaker.startPage1-1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${multiPageMaker.startPage1 }" end="${multiPageMaker.endPage1 }"
		var="idx">
		<li
			<c:out value="${multiPageMaker.multiPageInfo.page1 == idx?'class =active':''}"/>>
			<a href="mList${multiPageMaker.multi1(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${multiPageMaker.next1 && multiPageMaker.endPage1 > 0}">
		<li><a
			href="mList${multiPageMaker.multi(multiPageMaker.endPage1+1) }">&raquo;</a></li>
	</c:if>
</body>
</html>