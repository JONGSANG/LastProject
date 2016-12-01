<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>도서검색</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">도서검색</font>
		</div>
		<div id="link">
			<div id="link24">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>도서검색</b>
		</div>
	</section>
	<div id="insidebody">
	<div style="border-bottom: #d3d3d3 1px solid; padding-bottom: 20px; width: 770px">
	<form class="searchform cf" action="result" method="get">
				<select id="select_box" name="searchType">
					<option value="bTitle">제목명</option>
					<option value="bWriter">저자명</option>
					<option value="bCompany">출판사</option>
				</select> <input style="width: 590px; " type="text" name='keyword' id="keywordInput">
				<button id="searchBtn">검색</button>
			</form>
	</div>
	
	<table class="listtable" style="margin-top: 20px">
	<tr>
		<th width="100px">책 번호</th>
		<th width="320px">책 제목</th>
		<th width="140px">저자명</th>
		<th width="100px">출판사</th>
		<th width="100px">대출 여부</th>
	</tr>
	<tr>
		<td align="center" colspan="5">검색 조건을 선택하시고, 검색어를 입력한 후 [검색] 버튼을 눌러 주세요.</td>
	</tr>
</table>
	
</div>
</body>
</html>