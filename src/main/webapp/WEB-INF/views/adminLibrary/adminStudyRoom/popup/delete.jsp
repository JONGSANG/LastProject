<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%-- <table>
	<tr>
		<th colspan="2">좌석정보</th>
	</tr>
	<tr>
		<td>좌석번호</td>
		<td>${detail.num}</td>
	</tr>
	<tr>
		<td>사용자ID(이름)</td>
		<td>${detail.id}(${detail.name})</td>
	</tr>
	<tr>
		<td>시작시간</td>
		<td>${detail.start_time}</td>
	</tr>
	<tr>
		<td>종료시간</td>
		<td>${detail.end_time}</td>
	</tr>
	<tr>
		<td colspan="2">
		<form action="/adminLibrary/delete" method="get">
			<input type="hidden" name="num" value="${detail.num}">
			<input type="submit" value="좌석 취소" onclick="opener.location.reload()">
		</form>
		</td>
	</tr>
</table> --%>

<style type="text/css">
.room {border: #9BABBF 7px solid; width: 310px; text-align: center; border-radius: 10px}
</style>
</head>
<body>
<div class="room">
	<table class="idheader">
		<tr>
			<td colspan="2">
			<img alt="" src="/resources/images/pin.png" width="50px" style="padding-top: 15px">
			<img alt="" src="/resources/images/delete.png" height="50px"  style="padding-top: 15px">
			</td>
		</tr>
		<tr>
		<td colspan="2" height="15px"><img src="/resources/images/login/login_21.gif" width="300px"></td>
		</tr>
		</table>
		<table class="roomdelete">
		<tr>
		<th colspan="2">좌석정보</th>
	</tr>
	<tr>
		<td id="de1" width="110px" style="height: 35px">좌석번호</td>
		<td id="de2" width="90px">${detail.num}</td>
	</tr>
	<tr>
		<td id="de1" style="height: 35px">사용자ID</td>
		<td id="de2">${detail.id}</td>
	</tr>
	<tr>
		<td id="de1" style="height: 35px">이름</td>
		<td id="de2">${detail.name}</td>
	</tr>
	<tr>
		<td id="de1" style="height: 35px">시작시간</td>
		<td id="de2"><font color="blue">${detail.start_time}</font></td>
	</tr>
	<tr>
		<td id="de1" style="height: 35px; border-radius: 0 0 0 5px">종료시간</td>
		<td id="de2" style="border-radius: 0 0 5px 0"><font color="red">${detail.end_time}</font></td>
	</tr>
		<tr>
		<td colspan="2">
		<form action="/adminLibrary/delete" method="get">
		<input type="hidden" name="num" value="${detail.num}">
		
		</td>
		</tr>
		</table>
		<table>
			<tr>
		<td><img alt="" src="/resources/images/login/login_21.gif" width="300px" style="padding-top: 15px"></td>
		</tr>
		<tr>
		<td colspan="2" height="50px" style="padding-top: 15px">
		<a href="javascript:window.close()">
		<button type="submit" class="roombtn" value="좌석 취소" onclick="opener.location.reload()">좌석 취소</button>
		</a>
		</td>
		</tr>
		<tr>
		<td colspan="2" height="12px"></td>
		</tr>
		</table>
		</form>
	</div>
</body>
</html>