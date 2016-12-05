<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">도서배달서비스</font>
		</div>
		<div id="link">
			<div id="link38">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>도서배달서비스</b>
		</div>
	</section>
<div id="insidebody">
	<table class="viewtable" style="width: 500px; margin: auto;">
	<tr>
		<th colspan="2">사진</th>
	</tr>
		<tr>
			<th colspan="2" style="padding: 10px 0 10px 0"><img src="/resources/book_img/${delivery.bNo}.jpg"  width="300px"></th>
		</tr>
		<tr>
			<td id="vtd1">책번호</td>
			<td id="vtd2">${delivery.bNo}</td>
		</tr>
		<tr>
			<td id="vtd1">책제목</td>
			<td id="vtd2">${delivery.bTitle}</td>
		</tr>
		<tr>
			<td id="vtd1">전화번호</td>
			<td id="vtd2">${delivery.phone}</td>
		</tr>
		<tr>
			<td id="vtd1">주소</td>
			<td id="vtd2">${delivery.address}</td>
		</tr>
	</table>
	
	<table style="width: 500px; margin: auto;">
	<tr>
	<td style="padding-top: 10px">
	<div class="fright">
	<button onclick="location.href='/userLibrary/service/deliveryApplys?bNo=${delivery.bNo}&bTitle=${delivery.bTitle}&phone=${delivery.phone}&address=${delivery.address}'">신청하기</button>
	</div>
	</td>
	</tr>
	</table>
	
	
	</div>
</body>
</html>