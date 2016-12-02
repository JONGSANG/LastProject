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
	<section>
		<div id="word">
			<font style="font-size: 40px">민원 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>민원 내역</b>
		</div>
	</section>
	<div id="insidebody">
	<table class="listtable">
	<tr>
		<th width="100px">민원종류</th>
		<th width="390px">제목</th>
		<th width="140px">작성일자</th>
		<th width="140px">처리상태</th>
	</tr>
	<%-- 	Ex) eq (==)
	1. <c:if test="${ null eq test_column }"> // null
	2. <c:if test="${ 0 eq test_column }"> // 숫자
	3. <c:if test="${ '0' eq test_column }"> // 문자
	Ex) empty
	= <c:if test="${ empty test_columnMap }"> // list, map 객체 등
	= <c:if test="${ !empty test_columnMap }"> // 비어 있지 않은 경우
	Ex) ne (!=)
	1. <c:if test="${ null ne test_column }"> // null
	2. <c:if test="${ 0 ne test_column }"> // 숫자
	3. <c:if test="${ '0' ne test_column }"> // 문자 --%>
	
	<c:if test="${empty minResult}">
	<tr>
	<td colspan="4">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
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
	</div>
</body>
</html>