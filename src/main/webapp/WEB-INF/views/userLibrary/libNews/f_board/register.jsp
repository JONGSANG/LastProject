<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">자유게시판</font>
		</div>
		<div id="link">
			<div id="link55">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>자유게시판</b>
		</div>
	</section>
	<div id="insidebody">
	<form role="form" method="post">
	<table class="listread" style="margin-right: 20px;" >
	<tr>
		<th width="80px">제목</th>
		<td width="500px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 480px; " type="text" name='title' placeholder="제목을 입력해 주세요.">
		</td>
		<th width="80px">작성자</th><td align="center" valign="middle" width="100px">${ id }</td>
	</tr>
		<tr>
			<td colspan="4" style="padding-top: 10px" align="center">
			<textarea id="regiwrite" name="content" rows="20" cols="105" placeholder="내용을 입력해 주세요." ></textarea>
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