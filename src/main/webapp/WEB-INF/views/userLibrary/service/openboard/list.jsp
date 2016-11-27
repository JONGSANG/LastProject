<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>openboard list</h3>
<table>
	<tr>
		<th>글 번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>글작성날짜</th>
		<th>조회수</th>
	</tr>
	<!-- openboard_list 메소드에서 전체 목록을 불러올때 'list'라고 지정해뒀기때문에 list. 으로 시작함.
		 forEach문을 사용해서 반복처리함 -->
	<c:forEach items = "${list}" var = "list">
		<tr align = "center">
			<td>${list.num }</td>
			<td><a href = '/userLibrary/service/openboard/read?num=${list.num}'>${list.title }</a></td>
			<td>${list.id }</td>
			<td>${list.write_date }</td>
			<td>${list.viewcnt }</td>
		</tr>
	</c:forEach>
</table>
<!-- 공개게시판에 대한건 읽는건 아무나 가능하지만, 글쓰기 자체는 관리자만 가능하기때문에
	 권한 ROLE_ADMIN 을 가진 아이디만 가능함 -->
<security:authorize access="hasRole('ROLE_ADMIN')" >
<input type = "button" value = "글쓰기" onclick = "location.href='/userLibrary/service/openboard/write'">
</security:authorize>
</body>
</html>