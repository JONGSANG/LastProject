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
 <!-- 테이블부분 -->
  <link rel="stylesheet" href="/resources/css/adminLibrary/dataTables.bootstrap.css">
  
   <!-- 캘린더-->
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.css">
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.print.css" media="print">
  
  <!-- 데이터픽 css -->
  
  
  
  <!-- js 부분@@@@ -->
  
  <script src="/resources/js/jquery-2.2.3.min.js"></script> 
<script src="/resources/js/bootstrap.js"></script>

<script src="/resources/js/dataTables.bootstrap.js"></script>
<script src="/resources/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="/resources/js/app.js"></script> 
<!-- 캘린더 -->
<script src="/resources/js/moment.min.js"></script>
<script src="/resources/js/fullcalendar.js"></script>
<!-- 테이블부분 -->
<script src="/resources/js/dataTables.bootstrap.js"></script>
<script src="/resources/js/jquery.dataTables.js"></script>

  
  <script type="text/javascript">
  $(function () {
	    $("#example1").DataTable();
	    $('#example2').DataTable({
	      "paging": true,
	      "lengthChange": false,
	      "searching": false,
	      "ordering": true,
	      "info": true,
	      "autoWidth": false
	    });
	  });
  </script>
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