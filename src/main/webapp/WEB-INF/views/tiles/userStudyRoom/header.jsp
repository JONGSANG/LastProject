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
<div style="padding-top: 20px; padding-left: 20px">
<a href="/"><img src="/resources/images/roomLogo.png" height="70px" ></a>
<button class="roombtn" onclick="location.href='/userStudyRoom/aRoom/index'">제 1 열람실</button>&nbsp;&nbsp; 
<button class="roombtn" onclick="location.href='/userStudyRoom/bRoom/index'">제 2 열람실</button>&nbsp;&nbsp;
<button class="roombtn" onclick="location.href='/userStudyRoom/cRoom/index'">노트북 열람실</button>
</div>
<table class="viewtable" >
	<tr>
		<th width="150px"></th>
		<th width="180px">전체좌석</th>
		<th width="180px">사용좌석</th>
		<th width="180px">잔여좌석</th>
		<th width="180px">이용률</th>
	</tr>
	<tr>
		<td id="vtd1">제 1 열람실</td>
		<td id="vtd2">${chart.atotal}</td>
		<td id="vtd2">${chart.ausing}</td>
		<td id="vtd2">${chart.aempty}</td>
		<c:set value="${chart.atotal}" var="atotal"></c:set>
		<c:set value="${chart.ausing}" var="ausing"></c:set>
		<td id="vtd2"><fmt:formatNumber value="${ausing/atotal}" type="percent"></fmt:formatNumber></td>
	</tr>
	<tr>
		<td id="vtd1">제 2 열람실</td>
		<td id="vtd2">${chart.btotal}</td>
		<td id="vtd2">${chart.busing}</td>
		<td id="vtd2">${chart.bempty}</td>
		<c:set value="${chart.btotal}" var="btotal"></c:set>
		<c:set value="${chart.busing}" var="busing"></c:set>
		<td id="vtd2"><fmt:formatNumber value="${busing/btotal}" type="percent"></fmt:formatNumber></td>
	</tr>
	<tr>
		<td id="vtd1">노트북 열람실</td>
		<td id="vtd2">${chart.ctotal}</td>
		<td id="vtd2">${chart.cusing}</td>
		<td id="vtd2">${chart.cempty}</td>
		<c:set value="${chart.ctotal}" var="ctotal"></c:set>
		<c:set value="${chart.cusing}" var="cusing"></c:set>
		<td id="vtd2"><fmt:formatNumber value="${cusing/ctotal}" type="percent"></fmt:formatNumber></td>
	</tr>
</table>
</body>
</html>