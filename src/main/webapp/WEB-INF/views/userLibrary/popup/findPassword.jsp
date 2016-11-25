<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var a='${faller}';
	
    if(a=='faller'){
    	alert("일치하는 정보가 없습니다. 다시 입력해주세요");
    }
	</script>
</head>
	
	<div class="fineId">
	<table class="idheader">
		<tr>
			<td>
			<img alt="" src="/resources/images/login/login_01.png" width="50px" style="padding-top: 30px">
			<img alt="" src="/resources/images/login/login_03.png" height="50px"  style="padding-top: 30px">
			</td>
		</tr>
		
		
		
		<tr>
		<td height="30"><img src="/resources/images/login/login_21.gif" width="300px"></td>
		</tr>
		</table>
		<form method="post">
		<table>
		<tr>
		<td>
		<img src="/resources/images/login/login_71.png" width="100" height="23" style="padding-left: 30px">
		<input type="text" id="id" name="id" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px">
		</td>
		</tr>
		<tr>
		<td>
		<img src="/resources/images/login/login_74.png" width="100" height="23" style="padding-left: 30px">
		<input type="text" id="name" name="name" placeholder="홍길동" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px">
		</td>
		</tr>
		<tr>
		<td>
		<img src="/resources/images/login/login_79.png" width="100" height="23" style="padding-left: 30px">
		<input type="email" id="email" name="email" placeholder="aaaaa@naver.com" required size="23" style="text-align: center; font-size: 13px; height: 25px">
		</td>
		</tr>
		<tr>
		<td>
		<img src="/resources/images/login/login_75.png" width="100" height="23" style="padding-left: 30px">
		<input type="text" id="birth" name="birth" tabindex="1" size="23" 
								style="text-align: center; font-size: 13px; height: 25px; IME-MODE:disabled; text-align: center;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
		</td>
		<td>
		&nbsp;<img style="padding-top: 3px;"  src="/resources/images/login/login_56.png" height="25" onClick="datePicker(event,'birth')">
		</td>
		</tr>
		</table>
		<table>
		<tr>
		<td  style=" padding-left: 50px; padding-top: 30px"><img alt="" src="/resources/images/login/login_21.gif" width="300px"></td>
		</tr>
		<tr>
		<td colspan="2" height="60" align="center" style="padding-left: 50px; padding-top: 10px">
									<button class="btn" type="submit" id="submit" value="비밀번호 찾기">비밀번호 찾기</button>
									<br>　
		</td>
		<td height="40px"></td>
		</tr>
		
		</form>
		
	</table>
	
	</div>
