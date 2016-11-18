<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div style = "float:right; font-size:13px; ">
	<a href = "/" style="text-decoration:none; color:gray;">home ></a><a href = "#" style="text-decoration:none; color:gray;">도서관소식 >&nbsp;</a><b style="color: navy;">자유게시판</b>
	</div><br><br>
<form role="form" method="post">
	<table border="1">
		<tr>
			<th width="80">책 제목</th>
			<th><input type="text" name='bName' >
		</tr>
		<tr>
			<th width="80">저자 명</th>
			<th><input type="text" name='bWriter' >
		</tr>
		<tr>
			<th width="80">출판사</th>
			<th><input type="text" name='bCompany' >
		</tr>
		<tr>
			<th width="80">출간년도</th>
			<th><input type="text" name='bYear' placeholder="ex) 2015">
		</tr>
		<tr>
			<th>희망 사유(책 소개)</th>
			<th><textarea name="bIntro" rows="3" placeholder="Enter ..."></textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" value="${ id }" readonly="readonly"></th>
		</tr>
		<tr>
			<th colspan="2"><button type="submit">확인</button>
		</tr>
	</table>
</form>

</body>
</html>