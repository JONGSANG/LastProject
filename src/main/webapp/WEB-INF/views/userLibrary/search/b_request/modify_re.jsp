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
	<form action="modify_re" method="post">
		<input type="hidden" name="num" value="${boardVO2.num}"> <input
			type="hidden" name="hNum" value="${boardVO2.hNum}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name='id' class="form-control"
					value="${boardVO2.id}" readonly="readonly"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' class="form-control"
					value="${boardVO2.title}"></th>
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea class="form-control" name="content" rows="3">${boardVO2.content}</textarea></th>
			</tr>
			<tr>
				<th colspan="2"><button type="submit" value="수정" >수정</button>
					<button type="reset">취소</button></th>
			</tr>
		</table>
	</form>
</body>
</html>