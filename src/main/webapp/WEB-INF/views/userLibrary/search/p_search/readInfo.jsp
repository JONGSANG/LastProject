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
<div id="insidebody">
	<table class="viewtable" style="width: 750px">
	<tr>
		<th>사진</th>
		<th colspan="2">간행물 정보</th>
		
	</tr>
		<tr>
			<th width="150" rowspan="6"><img
				src="/resources/book_img/${read.bNo}.jpg" width="150"></th>
			<td id="vtd1">번호</td>
			<td id="vtd2">${read.bNo }</td>
		</tr>
		<tr>
			<td id="vtd1">제목 명</td>
			<td id="vtd2">${read.bTitle }</td>
		</tr>
		<tr>
			<td id="vtd1">저자 명</td>
			<td id="vtd2">${read.bWriter}</td>
		</tr>
		<tr>
			<td id="vtd1">출판사 명</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">${read.bCompany}</td>
		</tr>
		<tr>
			<td id="vtd1">출간년도</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">${read.bYear} 년</td>
			</tr>
			<tr>
			<td id="vtd1">구입 일자</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">
				<fmt:formatDate value="${read.buy_date}" pattern="yyyy.MM.dd"/>
			</td>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<td colspan="3" height="300" align="left">
			<textarea id="regiwrite" style="padding: 10px 0 0 10px" name="content" rows="5" cols="104" readonly="readonly; ">${read.bIntro}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button onclick="location.href='/userLibrary/service/deliveryApply?bno=${read.bNo}'">도서배달서비스</button>
			</div>
			<td colspan="3" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button onclick="javascript:history.back()" >돌아가기</button>
			</div>
			</td>
		</tr>
	</table>
	
	

</div>
</body>
</html>