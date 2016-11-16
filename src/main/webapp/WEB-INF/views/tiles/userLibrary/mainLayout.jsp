<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
	<title>Kosta Library</title>
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/reset.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/slider.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/templates.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/mainhome.css">
		<script src="/resources/js/jquery-1.8.3.min.js"></script> 
		<script src="/resources/js/jquery.jcarousel.min.js"></script> 
		<script src="/resources/js/jquery.ulslide.js"></script> 
		<script src="/resources/js/tms-0.4.1.js"></script>
		<script src="/resources/js/header.js"></script>
		<script src="/resources/js/userLibrary.js"></script>

</head>
<body>

      <tiles:insertAttribute name="header" />
   		
      <tiles:insertAttribute name="body" />
 
      <tiles:insertAttribute name="footer" />

</body>
</html>