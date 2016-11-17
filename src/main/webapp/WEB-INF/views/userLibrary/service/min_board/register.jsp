<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div style="float: right; font-size: 13px;">
		<a href="/" style="text-decoration: none; color: gray;">home ></a><a
			href="#" style="text-decoration: none; color: gray;">서비스 >&nbsp;</a><b
			style="color: navy;">민원게시판</b>
	</div>
	<br>
	<br>
	<form role="form" method="post">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" value="${ id }"
					placeholder="Enter id"></th>
			</tr>
			<tr>
				<th width="80">민원종류</th>
				<th>
					<!-- <input type="text" name='mselect' placeholder="민원종류"> -->
					<select name='mselect'>
						<option value="도서">도서</option>
						<option value="문헌정보실">문헌정보실</option>
						<option value="열람실">열람실</option>
						<option value="노트북실">노트북실</option>
						<option value="기타">기타</option>
					</select>
			</tr>
			<tr>
				<th width="80">제목</th>
				<th><input type="text" name='title' placeholder="제목">
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea name="content" rows="3" placeholder="내용을 입력하세요"></textarea></th>
			</tr>
			<tr>
				<th colspan="2"><button type="submit">등록</button>
			</tr>
		</table>
	</form>

</body>
</html>