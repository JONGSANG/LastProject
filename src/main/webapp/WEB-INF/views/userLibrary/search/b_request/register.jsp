<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>희망도서신청</title>
</head>
<body>
<section>
	<div id="word">
	<font style="font-size: 40px">희망도서신청</font>
	</div>
	<div id="link"><div id="link26"><a href = "/" >home ></a><a href = "#" >검색 >&nbsp;</a></div><b>희망도서신청</b></div>
	</section>
	<div id="insidebody">
<form role="form" method="post">
	<table class="listread" style="margin-right: 20px;" >
	<tr>
		<th width="80px">책제목</th>
		<td width="200px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 180px; " type="text" name='bName' placeholder="책 제목을 입력해 주세요.">
		</td>
		<th width="80px">저자명</th>
		<td  width="200px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 180px; " type="text" name='bWriter' placeholder="책 저자를 입력해 주세요.">
		</td>
		<th width="80px">작성자</th><td align="center" valign="middle" width="100px">${ id }</td>
	</tr>
	<tr>
	<th>출판사</th>
	<td valign="middle" style="padding-left: 10px; padding-top: 5px">
	<input id="write" style="width: 180px; " type="text" name='bCompany' placeholder="출판사를 입력해 주세요.">
	</td>
	<th>출간년도</th>
	<td valign="middle" style="padding-left: 10px; padding-top: 5px">
	<input type='text'  id="write" style="width: 180px;" placeholder="ex) 2016"
	onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
	style='IME-MODE:disabled; text-align: center;'  size="2" name="bYear"  pattern=".{4}" maxlength="4"> 
	</td>
	</tr>
		<tr>
			<td colspan="6" style="padding-top: 10px" align="center">
			<textarea id="regiwrite" name="bIntro" rows="20" cols="105" placeholder="희망 사유를 입력해 주세요." ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" style="border: none; padding-top: 5px"><div class="fright"><button type="submit">확인</button></div></td>
		</tr>
	</table>
</form>

</div>
</body>
</html>