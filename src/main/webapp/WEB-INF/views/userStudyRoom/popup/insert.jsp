<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	var noid='${noid}';
	var al='${al}';
	
    if(noid=='noid'){
    	alert("일치하는 정보가 없습니다. 다시 입력해주세요.");
    }
    if(al=='al'){
    	alert("이미 사용중인 좌석이 있습니다.")
    }
</script>
<style type="text/css">
.room {border: #9BABBF 7px solid; width: 310px; text-align: center; border-radius: 10px}
</style>
</head>
<body>
<div class="room">
	<table class="idheader">
		<tr>
			<td>
			<img alt="" src="/resources/images/pin.png" width="50px" style="padding-top: 15px">
			<img alt="" src="/resources/images/insert.png" height="50px"  style="padding-top: 15px">
			</td>
		</tr>
		<tr>
		<td height="15px"><img src="/resources/images/login/login_21.gif" width="300px"></td>
		</tr>
		
		<tr>
		<td>
		<p style="font-weight: bolder;">선택하신 좌석은 ${num}번 좌석입니다.</p>
		<form action="/userStudyRoom/insert" method="get">
		<input type="hidden" name="num" value="${num}">
		<input type="text" style="width: 240px; height: 25px; border-radius: 5px; padding-left: 5px " name="id" placeholder="아이디를 입력 및 회원증 스캔">
		
		</td>
		</tr>
			<tr>
		<td><img alt="" src="/resources/images/login/login_21.gif" width="300px" style="padding-top: 15px"></td>
		</tr>
		<tr>
		<td height="50px" style="padding-top: 30px">
		<a href="javascript:window.close()">
		<button type="submit" class="roombtn" value="열람실 사용" onclick="opener.location.reload()">열람실 사용</button>
		</a>
		</td>
		</tr>
		<tr>
		<td height="24px"></td>
		</tr>
		</table>
		</form>
	</div>
</body>
</html>