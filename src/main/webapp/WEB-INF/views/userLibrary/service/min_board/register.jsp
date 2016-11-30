<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>민원 게시판</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">민원 게시판</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>민원 게시판</b>
		</div>
	</section>
	<div id="insidebody">
	<form role="form" method="post">
	<table class="listread" style="margin-right: 20px;" >
	
	<tr>
		<th width="80px">제목</th>
		<td width="320px" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 308px; " type="text" name='title' placeholder="제목을 입력해 주세요.">
		</td>
		<th width="100px">민원종류</th><td style="padding-left: 2px; padding-top: 5px" width="82px">
					<select style="background-color: white; border-color: white;" name='mselect'>
						<option value="도서">도서</option>
						<option value="문헌정보실">문헌정보실</option>
						<option value="열람실">열람실</option>
						<option value="노트북실">노트북실</option>
						<option value="기타">기타</option>
					</select>
		</td>
		<th width="80px">작성자</th><td align="center" valign="middle" width="100px">${ id }</td>
	</tr>
		<tr>
			<td colspan="6" style="padding-top: 10px" align="center">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" placeholder="내용을 입력해 주세요." ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" style="border: none; padding-top: 5px"><div class="fright"><button type="submit">글쓰기</button></div></td>
		</tr>
	</table>
</form>
	
</div>
</body>
</html>