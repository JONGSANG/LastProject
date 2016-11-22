<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>간행물 검색</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">간행물 검색</font>
		</div>
		<div id="link">
			<div id="link25">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>간행물 검색</b>
		</div>
</section>
	<table width="600" border="1">
		<tr>
			<th width="150" rowspan="6"><img
				src="/resources/book_img/${read.bNo}.jpg" width="100"></th>
			<th width="90">번호</th>
			<th width="250">${read.bNo }</th>
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250">${read.bTitle }</th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100">${read.bWriter}</th>
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.bCompany}</th>
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.bYear} 년</th>
			</tr>
			<tr>
			<th width="50">구입 일자</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<fmt:formatDate value="${read.buy_date}" pattern="yyyy.MM.dd"/>
			</th>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<th colspan="3" height="300" align="left">${read.bIntro}</th>
		</tr>
	</table>


</body>
</html>