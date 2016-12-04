<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p>로고는 알아서 만드세요ㅋㅋ
<a href="/userStudyRoom/aRoom/index">제 1 열람실</a>
<a href="/userStudyRoom/bRoom/index">제 2 열람실</a>
<a href="/userStudyRoom/cRoom/index">노트북 열람실</a>
<table>
	<tr>
		<th></th>
		<th>전체좌석</th>
		<th>사용좌석</th>
		<th>잔여좌석</th>
		<th>이용률</th>
	</tr>
	<tr>
		<td>제 1 열람실</td>
		<td>${chart.atotal}</td>
		<td>${chart.ausing}</td>
		<td>${chart.aempty}</td>
		<c:set value="${chart.atotal}" var="atotal"></c:set>
		<c:set value="${chart.ausing}" var="ausing"></c:set>
		<td><fmt:formatNumber value="${ausing/atotal}" type="percent"></fmt:formatNumber></td>
	</tr>
	<tr>
		<td>제 2 열람실</td>
		<td>${chart.btotal}</td>
		<td>${chart.busing}</td>
		<td>${chart.bempty}</td>
		<c:set value="${chart.btotal}" var="btotal"></c:set>
		<c:set value="${chart.busing}" var="busing"></c:set>
		<td><fmt:formatNumber value="${busing/btotal}" type="percent"></fmt:formatNumber></td>
	</tr>
	<tr>
		<td>노트북 열람실</td>
		<td>${chart.ctotal}</td>
		<td>${chart.cusing}</td>
		<td>${chart.cempty}</td>
		<c:set value="${chart.ctotal}" var="ctotal"></c:set>
		<c:set value="${chart.cusing}" var="cusing"></c:set>
		<td><fmt:formatNumber value="${cusing/ctotal}" type="percent"></fmt:formatNumber></td>
	</tr>
</table>
</body>
</html>