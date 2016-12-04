<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
	<title>Kosta Library</title>
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/reset.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/slider.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/templates.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/userLibrary/mainhome.css">
		<script src="/resources/js/jquery-1.8.3.min.js"></script> 
		<script src="/resources/js/jquery.jcarousel.min.js"></script> 
		<script src="/resources/js/jquery.ulslide.js"></script> 
		<script src="/resources/js/jquery.bxslider.min.js"></script> 
		<script src="/resources/js/tms-0.4.1.js"></script>
		<script src="/resources/js/header.js"></script>
		<script src="/resources/js/userLibrary.js"></script>
		

</head>
<body>
		<div>
      <tiles:insertAttribute name="header" />
      </div>
   		<div >
      <tiles:insertAttribute name="body" />
      </div>
 <div style="border-top: 5px solid #E4E4E4">
	<br>
	<tiles:insertAttribute name="footer" />
	<br>
</div>
<!-- 심플배너 관련 -->
<script>
$(document).ready(function(){
	var slider = $('.bxslider').bxSlider({
			auto: true, mode:'fade',
		});
	var slider_01 =	$('.bxslider_01').bxSlider({
			auto: true,autoControls: true, mode:'vertical',
		});
	var slider_02 =	$('.bxslider_02').bxSlider({
			auto: true,controls:false,pagerCustom: '#bx-pager1'
		});
		// 클릭시 멈춤 현상 해결 //
		$(document).on('click','.bx-next, .bx-prev,  #bx-pager1',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		slider_02.stopAuto();
		slider_02.startAuto();
	});	
});
</script>

<!-- 로그인 관련 -->
<script type="text/javascript">
	var logout = '${logout}';
	var leave = '${leave}';
	var join = '${join}';

	if (logout == 'logout') {
		alert("로그아웃 완료");
	}

	if (leave == 'leave') {
		alert("회원탈퇴 완료")
	}

	if (join == 'join') {
		alert("회원가입 완료")
	}
</script>


</body>
</html>