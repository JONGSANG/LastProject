<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>도서검색</title>
<style type="text/css">
tr{text-align: center;}
th{text-align: center;}
</style>

</head>
<body>
 <div class="box-header">
<h3>등록 완료</h3>
            </div>

<table class="viewtable" style="width: 750px">
	<tr>
		<th style="text-align: center;">사진</th>
		<th style="text-align: center;" colspan="2">도서 정보</th>
		
	</tr>
		<tr>
			<th width="200" rowspan="6"><img
				src="/resources/book_img/${read.bNo}.jpg" width="200"></th>
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
			<th style="text-align: center;" colspan="3">책 소개</th>
		</tr>
		<tr>
			<td colspan="3" height="300" align="left">
			<textarea id="regiwrite" style="padding: 10px 0 0 10px; resize: none;" name="content" rows="10" cols="104" readonly="readonly;" disabled="disabled">${read.bIntro}</textarea>
			</td>
		</tr>
		<tr>
			<th colspan="1">바코드</th>
			<td colspan="2" id="vtd2"><img src="/resources/barcode_img/${read.bNo}.png" width="300"></th>
		</tr>
		
	</table>

</body>
</html>