<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>Kosta Library</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
 <link rel="stylesheet" href="/resources/css/adminLibrary/_all-skins.css">
 <link rel="stylesheet" href="/resources/css/adminLibrary/AdminLTE.css">
 <link rel="stylesheet" href="/resources/css/adminLibrary/bootstrap.css">
 
   <!-- 캘린더-->
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.css">
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.print.css" media="print">
  
  <!-- js 부분@@@@ -->
  
  <script src="/resources/js/jquery-2.2.3.min.js"></script> 
<script src="/resources/js/bootstrap.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="/resources/js/app.js"></script> 
<!-- 캘린더 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="/resources/js/fullcalendar.js"></script>
  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
		
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="menu2" />
		
		<div class="content-wrapper"  style="min-height: 901px;">
		<tiles:insertAttribute name="body" />
		</div>
		
</div>


</body>
</html>