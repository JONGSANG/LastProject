<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>Kosta Library</title>
<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/reset.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/member.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/login.css">
		<script src="/resources/js/jquery-1.8.3.min.js"></script>
		<script src="/resources/js/header.js"></script>
		
</head>
<body>
		<div class="slider">
		<tiles:insertAttribute name="memberheader" />
		</div>
		
			<div id="logincontent">
		<tiles:insertAttribute name="body" />
			</div>
		
		<div style="border-top: 5px solid #E4E4E4; background-color: white;">
		<br>
		<tiles:insertAttribute name="footer" />
		<br>
	</div>
</body>
</html>