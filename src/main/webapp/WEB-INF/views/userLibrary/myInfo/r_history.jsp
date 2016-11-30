<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>신청 내역</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">신청 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>신청 내역</b>
		</div>
	</section>
	<div id="insidebody">
	<%-- <table>
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
				<td><fmt:formatDate value="${hope.hope_Date}"
						pattern="yyyy.MM.dd" /> 
						<c:if test="${hope.result==1}"> <td>입고완료 </td></c:if> 
						<c:if test="${hope.result==0}"> <td>신청중 </c:if> 
						<c:if test="${hope.result==-1}"> <td>신청거절 </c:if>
			</tr>
		</c:forEach>
	</table> --%>
	
	<table class="listtable">
	<tr>
		<th width="200px">책제목</th>
		<th width="110px">작가명</th>
		<th width="100px">출판사</th>
		<th width="140px">출판년도</th>
		<th width="110px">신청일</th>
		<th width="110px">신청결과</th>
	</tr>
	
	<c:if test="${empty hope}">
	<tr>
	<td colspan="6">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	
	<c:forEach items="${hope}" var="hope">
	<tr>
		<td>${hope.bName}</td>
		<td>${hope.bWriter}</td>
		<td>${hope.bCompany}</td>
		<td>${hope.bYear}</td>
		<td><fmt:formatDate value="${hope.hope_Date}" pattern="yyyy.MM.dd" /></td>
		<c:if test="${hope.result==1}"> <td style="color: red;">입고완료 </td></c:if>  <c:if test="${hope.result==0}"> <td style="color: red;">신청중 </c:if>  <c:if test="${hope.result==-1}"> <td style="color: red;"s>신청거절 </c:if>
	</tr>
	</c:forEach>
</table>
	
	</div>
</body>
</html>