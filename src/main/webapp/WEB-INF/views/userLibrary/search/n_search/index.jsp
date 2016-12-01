<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	
	<table class="listtable" style="margin-top: 20px">
	<tr>
		<th width="80px">일련번호</th>
		<th width="340px">책 제목</th>
		<th width="140px">저자명</th>
		<th width="100px">출판사</th>
		<th width="100px">대출 여부</th>
	</tr>
	<tr>
		<td align="center" colspan="5">검색 날짜를 선택한 후 [검색] 버튼을 눌러 주세요.</td>
	</tr>
</table>
	
	<%-- 	<jsp:include page="${content}">
		<jsp:param value="" name="" />
	</jsp:include>
 --%>

</div>
</body>
</html>