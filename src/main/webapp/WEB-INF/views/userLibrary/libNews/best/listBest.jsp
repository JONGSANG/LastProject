<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>대출도서 베스트</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">대출도서 베스트</font>
		</div>
		<div id="link">
			<div id="link59">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>대출도서 베스트</b>
		</div>
	</section>
	<div id="insidebody">
	<table class="viewtable" style="margin-right: 20px">
		<tr>
			<th width="100">분야</th>
			<td id="vtd1" width="190">문학</td>
			<td id="vtd1" width="190">컴퓨터</td>
			<td id="vtd1" width="190">정치/사회</td>
		</tr>
		<tr>
			<th>사진</th>
			<td id="vtd2">
				<img src="/resources/book_img/${mun.bNo}.jpg" width="100">
			</td>
			<td id="vtd2">
				<img src="/resources/book_img/${com.bNo}.jpg" width="100">
			</td>
			<td id="vtd2">
				<img src="/resources/book_img/${soc.bNo}.jpg" width="100">
			</td>		
		</tr>
		<tr>
			<th>책 명</th>
			<td id="vtd2">${mun.bTitle}</td>
			<td id="vtd2">${com.bTitle}</td>
			<td id="vtd2">${soc.bTitle}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td id="vtd2">${mun.bWriter}</td>
			<td id="vtd2">${com.bWriter}</td>
			<td id="vtd2">${soc.bWriter}</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td id="vtd2">${mun.bCompany}</td>
			<td id="vtd2">${com.bCompany}</td>
			<td id="vtd2">${soc.bCompany}</td>
		</tr>
		<tr>
			<th>대출횟수</th>
			<td id="vtd2">${mun.brent_cnt}</td>
			<td id="vtd2">${com.brent_cnt}</td>
			<td id="vtd2">${soc.brent_cnt}</td>
		</tr>		
	</table>

	<table class="viewtable">
		<tr>
			<th width="100">분야</th>
			<td id="vtd1" width="200">예술</td>
			<td id="vtd1" width="200">어린이</td>
		</tr>
		<tr>
			<th>사진</th>
			<td id="vtd2">
				<img src="/resources/book_img/${art.bNo}.jpg" width="100">
			</td>
			<td id="vtd2">
				<img src="/resources/book_img/${young.bNo}.jpg" width="100">
			</td>
		</tr>
		<tr>
			<th>책 명</th>
			<td id="vtd2">${art.bTitle}</td>
			<td id="vtd2">${young.bTitle}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td id="vtd2">${art.bWriter}</td>
			<td id="vtd2">${young.bWriter}</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td id="vtd2">${art.bCompany}</td>
			<td id="vtd2">${young.bCompany}</td>
		</tr>
		<tr>
			<th>대출횟수</th>
			<td id="vtd2">${art.brent_cnt}</td>
			<td id="vtd2">${young.brent_cnt}</td>
		</tr>		
	</table>

	<table class="viewtable">
		<tr>
			<th width="100">분야</th>
			<td id="vtd1" width="200">연속간행물</td>
		</tr>
		<tr>
			<th width="100">사진</th>
			<td id="vtd2" width="200">
				<img src="/resources/book_img/${gan.bNo}.jpg" width="100">
			</td>
		</tr>
		<tr>
			<th>책 명</th>
			<td id="vtd2">${gan.bTitle}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td id="vtd2">${gan.bWriter}</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td id="vtd2">${gan.bCompany}</td>
		</tr>
		<tr>
			<th>대출횟수</th>
			<td id="vtd2">${gan.brent_cnt}</td>
		</tr>		
	</table>
</div>
</body>
</html>