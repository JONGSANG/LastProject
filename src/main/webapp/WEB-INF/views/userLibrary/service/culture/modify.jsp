<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>문화 행사</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">문화 행사</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>문화 행사</b>
		</div>
	</section>
	<div id="insidebody">
<form enctype="multipart/form-data" method="post">
<input type = "hidden" name = "id" value = "${cultureVO.id }">
	<table class="listread" style="margin-right: 20px;" >
	<tr>
	<th width="80px">카테고리</th><td align="center" valign="middle" width="80px">${cultureVO.cselect }</td>
	<input type = "hidden" name = "aselect" value = "${cultureVO.cselect }">
	<th width="80px">시작 날짜</th><td align="center" valign="middle" width="100px">
		<input type="text" id="start_date" name="start_date" tabindex="1" size="23" value="${cultureVO.start_date }"
								style="text-align: center; font-size: 13px; width : 70px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
								<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'start_date')">
	</td>
	<th width="80px">종료 날짜</th><td align="center" valign="middle" width="100px">
		<input type="text" id="end_date" name="end_date" tabindex="1" size="23" value="${cultureVO.end_date }"
								style="text-align: center; font-size: 13px; width : 70px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
								<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'end_date')">
	</td>
	<th width="70px">인원수</th><td width="50px" align="center">
	<input type='text'  		value="${cultureVO.max_cnt }"
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style='IME-MODE:disabled; text-align: center; background-color: white; border: 0; margin-top: 4px'  
              					size="2" 
              					name="max_cnt" 
              					pattern=".{1,2,3}" 
              					maxlength="3">
	</tr>
	<tr>
		<th>제목</th>
		<td id="listcontents" colspan="4" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 270px; " type="text" name='title' value="${cultureVO.title }">
		</td>
		<th width="110px">아이디</th>
		<td align="center" valign="middle" colspan="2" width="150px">${cultureVO.id }</td>
	</tr>
		<tr>
		<td align="center" colspan="8"><img
			src="/resources/file/${cultureVO.newname }" width="750px"
			title="클릭하시면 원본크기로 보실 수 있습니다." style="cursor: pointer;"
			onclick="doImgPop('/resources/file/${cultureVO.newname }')" />
		</td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 10px" align="center">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" placeholder="내용을 입력해 주세요." >${cultureVO.content }</textarea>
			</td>
		</tr>
		<tr>
		<th>첨부된 파일</th><td colspan="3" align="center" valign="middle"><a href = "/resources/file/${cultureVO.newname }" download>${cultureVO.orgname }</a></td>
		<th>첨부파일</th><td colspan="3"><input style="background-color: white; height: 25px; margin-top: 8px" type = "file" name = "file"  required="required"></td>
		</td>
		</tr>
		<tr>
			<td colspan="8" style="border: none; padding-top: 5px">
			<div class="fright">
			<input type = "hidden" name = "newname" value = "${cultureVO.newname }">
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