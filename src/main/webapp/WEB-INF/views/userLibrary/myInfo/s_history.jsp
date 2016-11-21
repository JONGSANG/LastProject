<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>카테고리
			<th>글제목
			<th>인원
			<th>시작일
			<th>신청상태
		</tr>
		<c:forEach items="${culture}" var="culture">
		<tr>
			<td>${culture.cselect}
			<td>${culture.title}
			<td>${culture.tocnt}/${culture.max_cnt}
			<td><fmt:formatDate value="${culture.culture_date}" pattern="yyyy.MM.dd"/>
			<c:if test="${culture.state==1}">
				<td>승인완료
			</c:if>
			<c:if test="${culture.state==0}">
				<td>신청대기중
			</c:if>
			<c:if test="${culture.state==-1}">
				<td>승인거절
			</c:if>
		</tr>
		</c:forEach>
	</table>
	
	<table>
		<tr>
			<th>카테고리
			<th>글제목
			<th>인원
			<th>시작일
			<th>신청상태
		</tr>
		<c:forEach items="${after}" var="after">
		<tr>
			<td>${after.aselect}
			<td>${after.title}
			<td>${after.tocnt}/${after.max_cnt}
			<td><fmt:formatDate value="${after.after_date}" pattern="yyyy.MM.dd"/>
			<c:if test="${after.state==1}">
				<td>승인완료
			</c:if>
			<c:if test="${after.state==0}">
				<td>신청대기중
			</c:if>
			<c:if test="${after.state==-1}">
				<td>승인거절
			</c:if>
		</tr>
		</c:forEach>
	</table>
</body>
</html>