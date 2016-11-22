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
			<td>${adminList.id}
			<td>${adminList.name}
			<td>${adminList.j_part}
			<td>${adminList.j_level}
			<td>${adminList.phone}
		</tr>
		</c:forEach>
	</table>
</body>
</html>