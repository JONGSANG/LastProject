<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>신착도서</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">신착도서</font>
		</div>
		<div id="link">
			<div id="link24">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>신착도서</b>
		</div>
</section>
<div id="insidebody">
	<div style="border-bottom: #d3d3d3 1px solid; padding-bottom: 20px; width: 770px">
	<form class="searchform cf" action="result" method="get">
	<table class="listtable" style="margin-top: 20px;">
	<tr>
		<td width="180px" style="text-align: right; padding-right: 10px; border: none; font-size: 17px">검색 날짜</td>
		<td width="140px" style="border: none; "">
		<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'start_date')">
				<input type="text" id="start_date" name="start_date" tabindex="1" size="23" value="2016-01-01"
				style="text-align: center; font-size: 14px; width : 90px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
				onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
		</td>
		<td width=60px" style="border: none; font-size: 17px">~부터</td>
		<td width="140px" style="border: none; "">
		<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'end_date')">
				<input type="text" id="end_date" name="end_date" tabindex="1" size="23" value="2016-02-01"
				style="text-align: center; font-size: 14px; width : 90px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
				onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
		</td>
		<td width="60px" style="border: none; font-size: 17px">~까지</td>
		<td width="180px" style="text-align: left; padding-left: 10px; border: none;"><button id='searchBtn'>검색</button></td>
	</tr>
		</table>
			</form>
	</div>
<table class="viewtable" style="width: 750px">
	<tr>
		<th>사진</th>
		<th colspan="2">도서 정보</th>
		
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
			<textarea id="regiwrite" style="padding: 10px 0 0 10px; overflow-y:hidden" name="content" rows="10" cols="104" readonly="readonly; " disabled="disabled">${read.bIntro}</textarea>
			</td>
		</tr>
		<tr>
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