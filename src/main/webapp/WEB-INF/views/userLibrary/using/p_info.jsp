<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>주차장 안내</title>
</head>
<body>
	<section>
	<div id="word">
	<font style="font-size: 40px">주차장안내</font>
	</div>
	<div id="link"><div id="link45"><a href = "/" >home ></a><a href = "#" >이용안내 >&nbsp;</a></div><b>주차장안내</b></div>
	</section>
	<div id="insidebody">
	<img src="/resources/images/word/library_parkinginfo.png">
	<div id="map" style="width:600px;height:400px; align:center; margin-top: 10px"></div>
	<img style="margin-top: 30px" src="/resources/images/word/library_parkingp.png">
	<table class="viewtable" >
		<tr>
			<th width="100px">층수</th>
			<th width="100px">자리 수</th>
			<th width="200px">이용가능 시간</th>
			<th width="150px">시간제</th>
			<th width="150px">월 정액제</th>
		</tr>
		<tr>
			<td id="vtd1">지하 2층</td>
			<td id="vtd2">49개</td>
			<td id="vtd2">04:00 ~ 24:00</td>
			<td id="vtd2">250원 / 5분</td>
			<td id="vtd2">100,000원</td>
		</tr>
		<tr>
			<td id="vtd1">지하 3층</td>
			<td id="vtd2">49개</td>
			<td id="vtd2">05:00 ~ 24:00</td>
			<td id="vtd2">250원 / 5분</td>
			<td id="vtd2">100,000원</td>
		</tr>
	</table>
	<img style="margin-top: 10px" src="/resources/images/word/library_parkinginfo1.png">
	<br>
	<img style="margin-top: 30px" src="/resources/images/word/library_parkingpdowninfo.png">
	<br>
	<table class="viewtable" >
		<tr>
			<th width = "100px">구분</th>
			<th width = "230px">감면대상</th>
			<th width = "375px">비고</th>
		</tr>
		<tr>
			<td id="vtd1" rowspan = "2">면 제</td>
			<td id="vtd2" style="height: 45px">긴급자동차<br>(도로교통법 제2조 제 16항)</td>
			<td id="vtd2"></td>
		</tr>
		<tr>
			<td id="vtd2" style="height: 45px">성실납세자<br>(스티커부착차량)</td>
			<td id="vtd2">스티커 교부일로부터 1년간 면제</td>
		</tr>
		<tr>
			<td id="vtd1">80% 할인</td>
			<td id="vtd2" style="height: 45px">장애인, 국가유공자</td>
			<td id="vtd2">장애인 및 국가유공자 등록 차량으로서 <br>관련증서 소지자에 한함</td>
		</tr>
		<tr>
			<td id="vtd1" rowspan = "3">50% 할인</td>
			<td id="vtd2" style="height: 45px">경형자동차<br>(1,000cc 미만)</td>
			<td id="vtd2"></td>
		</tr>
		<tr>
			<td id="vtd2">저공해차량</td>
			<td id="vtd2">저공해자동차태그 부착차량</td>
		</tr>
		<tr>
			<td id="vtd2" style="height: 45px">다자녀우대카드 소지차량 중 <br>3자녀이상(본인에 한함)</td>
			<td id="vtd2">서울시 및 강동구가 발행한 다자녀우대카드소지고객에 한함 <br>(주소지가 강동구인 고객에 한함)</td>
		</tr>
		<tr>
			<td id="vtd1" rowspan = "2">30% 할인</td>
			<td id="vtd2" style="height: 45px">승용차요일제 참여차량</td>
			<td id="vtd2">전자태그 부착차량<br>(요일제 준수차량에 한함)</td>
		</tr>
		<tr>
			<td id="vtd2" style="height: 45px">다자녀우대카드 소지차량 중 <br>2자녀차량(본인에 한함)</td>
			<td id="vtd2">서울시 및 강동구가 발행한 다자녀우대카드소지고객에 한함 <br>(주소지가 강동구인 고객에 한함)</td>
		</tr>
	</table>
	<img style="margin-top: 10px" src="/resources/images/word/library_parkinginfo2.png">
</div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=d8a783ab647cf241b46707bc4e31d1ac"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.402188, 127.106798),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new daum.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new daum.maps.LatLng(37.402188, 127.106798); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		var iwContent = '<div style="padding:5px;">유스페이스2 B동 KOSTA도서관 주차장 <br><a href="http://map.daum.net/link/map/Hello World!,37.402230, 127.107007"</a></div>', 
		 // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new daum.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
	</script>
	</div>
</body>
</html>