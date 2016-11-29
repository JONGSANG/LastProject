<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자료현황</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">자료현황</font>
		</div>
		<div id="link">
			<div id="link54">
				<a href="/">home ></a><a href="#">도서관소개 >&nbsp;</a>
			</div>
			<b>자료현황</b>
		</div>
	</section>
	<div id="insidebody">
	<img alt="" src="/resources/images/word/library_brent1.png">
	<table class="viewtable">
		<tr>
			<th colspan="3">문학</th>
			<th>컴퓨터</th>
			<th colspan="2">사회/정치</th>
			<th>예술</th>
			<th>어린이</th>
			<th width="70px" rowspan="2">총합</th>
			
		</tr>
		<tr>
			<th width="60px">시집</th>
			<th width="80px">산문집</th>
			<th width="60px">소설</th>
			<th width="140px">프로그래밍언어</th>
			<th width="100px">정치/외교</th>
			<th width="100px">생태/환경</th>
			<th width="60px">건축</th>
			<th width="60px">인물</th>
		</tr>
		<tr>
			<td id="vtd2">${b_status.si} 권</td>
			<td id="vtd2">${b_status.san} 권</td>
			<td id="vtd2">${b_status.so} 권</td>
			<td id="vtd2">${b_status.pro} 권</td>
			<td id="vtd2">${b_status.jung} 권</td>
			<td id="vtd2">${b_status.sang} 권</td>
			<td id="vtd2">${b_status.gun} 권</td>
			<td id="vtd2">${b_status.inm} 권</td>
			<td id="vtd2">${b_status.allb-b_status.wol} 권</td>
		</tr>
	</table>
	<img style="margin-top: 20px" alt="" src="/resources/images/word/library_brent2.png">
		<table class="viewtable">
			<tr>
				<th colspan="2">연속간행물</th>
			</tr>
			<tr>
				<th  width="70px">종 수</th>
				<th  width="90px">총 권수</th>
			</tr>
			<tr>
				<td id="vtd2">${b_status.wol_cnt} 종</td>
				<td id="vtd2">${b_status.wol} 권</td>
			</tr>
		</table>
		</div>
</body>
</html>