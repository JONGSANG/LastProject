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
	<form action="modify" method="post">
	<input type="hidden" name='num' value="${boardVO.num}" >
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">책제목</th>
	<td width="200px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 180px;" value="${boardVO.bName}" type="text" name='bName'>
		</td>
	<th width="80px">저자명</th>
	<td  width="200px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 180px; " value="${boardVO.bWriter}" type="text" name='bWriter'>
		</td>
	<th width="80px">작성자</th><td  width="100px" id="listTitle" align="center">${boardVO.id}</td>
	</tr>
	<tr>
	<th>출판사</th>
	<td valign="middle" style="padding-left: 10px; padding-top: 5px">
	<input id="write" style="width: 180px; " type="text" name='bCompany' value="${boardVO.bCompany}">
	</td>
	<th>출간년도</th>
	<td valign="middle" style="padding-left: 10px; padding-top: 5px">
	<input type='text'  id="write" style="width: 180px;" value="${boardVO.bYear}"
	onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
	style='IME-MODE:disabled; text-align: center;'  size="2" name="bYear"  pattern=".{4}" maxlength="4"> 
	</td>
	</tr>
	<tr>
		<td colspan="6" style="padding-top: 10px" align="center">
			<textarea id="regiwrite" name="bIntro" rows="20" cols="105" >${boardVO.bIntro}</textarea>
			</td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button type="submit" value="수정하기">수정하기</button>
			<button onclick="javascript:history.back()" >돌아가기</button>
			</div>
			</td>
		</tr>
	</table>
	
	</form>
	</div>
</body>
</html>