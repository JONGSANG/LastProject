<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>찾아오는 길</title>
</head>
<body>
<div >
	<h2>코스타 도서관</h2><br>
	<div style = "float:right; font-size:13px;">
	<a href = "홈 경로" style="text-decoration:none; color:gray;">home > <a href = "도서관소개 링크경로" style="text-decoration:none; color:gray;">도서관소개 > <a href = "/edu/map" style="text-decoration:none; color:gray;">찾아오는 길</a>
	</div><br>
	<br>
	<div id="map" style="width:600px;height:400px; align:center;"></div>
	<br>
	> 주변 교통안내 <br>
	* 지하철 <br>
		- 신분당선 판교역 1번 출구(도보 10분)<br>
		- 신분당선 판교역 4번출구 에서 마을버스 => 하이펙스/H스퀘어 에서 하차(약2분 소요)<br>
	<br>
	* 버스<br>
		- 판교역 서편(판교역 4번출구) : <font color = "#FF9A00">마을버스 602-1, 602-2, 71 등</font><br>
		- 하이펙스 : <font color = "#257B00">일반 280번, 310번, 390번</font><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color = "#FF9A00">마을버스 602-1번, 71번, 73번, 812번</font><br>
		- 봇들육교 : <font color = "#257B00">일반 101번, 330번, 350번, 380번, 500번</font><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color = "#FF9A00">마을버스 602-1번, 71번</font><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color = "#FF0000">직행버스 4000번, 9005번</font><br>
		- 금토천교 : <font color = "#FF0000">직행버스 1007번, 1007-1번, 5600번, 5700번, 6800번, 6900번</font><br>
	<br>
	> 주소(폰굵) 경기도 성남시 분당구 삼평동 대왕판교로 670길(구 682번지) 유스페이스2 B동<br>
	> 교육문의(폰굵) 취업교육 : 070-7090-4977 / 재직자교육 : 070-7090-4974
</div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=d8a783ab647cf241b46707bc4e31d1ac"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.402230, 127.107007),
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
		var markerPosition  = new daum.maps.LatLng(37.402230, 127.107007); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		var iwContent = '<div style="padding:5px;">유스페이스2 B동 KOSTA도서관 <br><a href="http://map.daum.net/link/map/Hello World!,37.402230, 127.107007"</a></div>', 
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
</body>
</html>