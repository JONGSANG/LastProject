<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script>
	var success='${success}';
	
    if(success=='success'){
    	alert("계정 추가 성공");
    }
</script>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>아이디
			<th>이름
			<th>부서
			<th>직급
			<th>전화번호
		</tr>
		<c:forEach items="${adminList}" var="adminList">
		<tr>
			<td><a href="/adminLibrary/adminInfo/adminDetail?id=${adminList.id}">${adminList.id}</a>
			<td>${adminList.name}
			<td>${adminList.j_part}
			<td>${adminList.j_level}
			<td>${adminList.phone}
		</tr>
		</c:forEach>
	</table>
	
	<c:if test="${pageMaker.prev}">
		<li><a
			href="m_list${pageMaker.typeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="m_list${pageMaker.typeSearch(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="m_list${pageMaker.typeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if>
	
	<form method="get">
		<select name="searchType">
			<option value='아이디'>아이디</option>
			<option value='이름'>이름</option>
			<option value='부서'>부서</option>
			<option value='직급'>직급</option>
			<option value='전화번호'>전화번호</option>
		</select>
		<input type="text" name="keyword" required>
		<input type="submit" value="검색">
	</form>
</body>
</html>