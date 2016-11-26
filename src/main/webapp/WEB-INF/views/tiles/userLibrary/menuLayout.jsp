<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>Kosta Library</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="/resources/css/userLibrary/reset.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="/resources/css/userLibrary/header2.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="/resources/css/userLibrary/menu.css">
<script src="/resources/js/jquery-1.8.3.min.js"></script>
<script src="/resources/js/tms-0.4.1.js"></script>
<script src="/resources/js/menu.js"></script>


		<tr>
			<th>
				<input type="radio" name="searchType" value="01"  onClick="updateList(this.value)"> 문학
			</th>
			<th>
				<input type="radio" name="searchType" value="03"  onClick="updateList(this.value)"> 컴퓨터
			</th>
			<th>
				<input type="radio" name="searchType" value="04"  onClick="updateList(this.value)"> 정치/사회
			</th>
			<th>	
				<input type="radio" name="searchType" value="05"  onClick="updateList(this.value)"> 예술
			</th>
			<th>
				<input type="radio" name="searchType" value="07"  onClick="updateList(this.value)"> 어린이
			</th>
			<th>
				<input type="radio" name="searchType" value="99"  onClick="updateList(this.value)"> 연속간행물
			</th>


</head>
<body>
	<div class="slider">
		<tiles:insertAttribute name="header2" />
	</div>

	<div id="header2">
		<div id="leftmenu">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="rightcontent">
			<tiles:insertAttribute name="body" />
		</div>
	</div>

	<div style="border-top: 5px solid #E4E4E4">
		<br>
		<tiles:insertAttribute name="footer" />
		<br>
	</div>
</body>
</html>