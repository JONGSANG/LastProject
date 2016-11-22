<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
<h3>list page</h3><br>
<div>
	<table border = "1">
		<tr>
			<th>글 번호</th>
			<th>카테고리</th>
			<th>글 제목</th>
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
 			<td>${list.cselect}</td>
 			<td><a href = '/userLibrary/service/culture/read?num=${list.num}'>${list.title}</a></td>
			<td>${list.id}</td>
			<td><fmt:formatDate value="${list.write_date}" pattern="yyyy-MM-dd"/></td>
			<td>${list.max_cnt }</td>
			<td>${list.tocnt }</td>
			<td>${list.viewcnt }
		</tr>
		</c:forEach>
	</table>
</div>
<security:authorize access="hasRole('ROLE_ADMIN')" >
<input type = "button" value = "글쓰기" onclick = "location.href='/userLibrary/service/culture/write'">
</security:authorize>
<script>
	var result = '${msg}';
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>
</body>
</html>