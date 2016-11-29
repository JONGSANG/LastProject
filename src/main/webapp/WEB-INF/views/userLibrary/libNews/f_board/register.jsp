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
	<table class="listread">
	
	<tr>
		<th width="80px">제목</th><td width="500px" style="padding-left: 10px"><input id="write" width: 460px" type="text" name='title' placeholder="Enter Title"></td>
		<th width="80px">작성자</th><td width="100px">${ id }</td>
	</tr>
		<tr>
			<th>내용</th>
			<th><textarea name="content" rows="3" placeholder="Enter ..."></textarea></th>
		</tr>
		<tr>
			<th colspan="2"><button type="submit">확인</button>
		</tr>
	</table>
</form>
</div>
</body>
</html>