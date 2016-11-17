<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>list</title>
</head>
<body>
<h3>list page</h3><br>
<div>
	<table border = "1">
		<tr>
			<th>글 번호</th>
			<th>(카테고리)글 제목</th>
			<th>글 작성자</th>
			<th>글 작성날짜</th>
			<th>최대인원수</th>
			<th>현제인원수</th>	
			<th>조회수</th>
		</tr>
		<tr>
		<c:forEach items = "${list}" var = "list">
		<tr align = "center">
 			<td>${list.num}</td>
 			<td><a href = '/userLibrary/service/culture/read?num=${list.num}'>[${list.cselect}]${list.title}</a></td>
			<td>${list.id}</td>
			<td>${list.write_date}</td>
			<td>${list.max_cnt }</td>
			<td>${list.tocnt }</td>
			<td>${list.viewcnt }
		</tr>
		</c:forEach>
	</table>
</div>
<input type = "button" value = "글쓰기" onclick = "location.href='write'">
<script>
	var result = '${msg}';
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>
</body>
</html>