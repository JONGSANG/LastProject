<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>공개 자료실</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">공개 자료실</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>공개 자료실</b>
		</div>
	</section>
<div id="insidebody">
	<form enctype="multipart/form-data" method="post">
	<table class="listread" style="margin-right: 20px;" >
	<tr>
	<th width="80px">작성자</th><td align="center" valign="middle" width="100px">${o_BoardVO.id}</td>
	<th width="140px">파일 업로드</th>
	<td width="450px">
	<input style="width: 440px; background-color: white; height: 20px; " type = "file" name = "file"  required="required">
	</td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 670px; " type="text" name='title' placeholder="제목을 입력해 주세요.">
		</td>
	</tr>
		<tr>
			<td colspan="4" style="padding-top: 10px" align="center">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" placeholder="내용을 입력해 주세요." ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="border: none; padding-top: 5px"><div class="fright"><button type="submit">글쓰기</button></div></td>
		</tr>
	</table>
</form>
	
</div>

</body>
</html>