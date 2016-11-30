<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>대출 내역</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">대출 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>대출 내역</b>
		</div>
	</section>
	<div id="insidebody">
	<table class="listtable">
	<tr>
		<th width="100px">책번호</th>
		<th width="390px">책제목</th>
		<th width="140px">대출일</th>
		<th width="140px">반납일</th>
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
	
	<c:if test="${empty rent}">
	<tr>
	<td colspan="4">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	<c:forEach items="${rent}" var="rent">

	<tr>
		<td>${rent.bno}</td>
		<td>${rent.btitle}</td>
		<td><fmt:formatDate value="${rent.rent_date}" pattern="yyyy.MM.dd"/></td>
		<td><fmt:formatDate value="${rent.submit_date}" pattern="yyyy.MM.dd"/></td>
	</tr>
	</c:forEach>
</table>
	</div>
</body>
</html>