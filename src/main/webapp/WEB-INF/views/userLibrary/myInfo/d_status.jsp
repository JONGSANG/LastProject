<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>대출 현황</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">대출 현황</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>대출 현황</b>
		</div>
	</section>
	<div id="insidebody">
	<table>
		<tr>
			<th>책 제목
			<th>대출일
			<th>반납예정일
			<th>연체일수
			<th>상태
			<th>반납연기
		</tr>
		<c:forEach items="${rent}" var="rent" >
		<tr>
			<td>${rent.btitle}
			<td>${rent.rent_date}
			<td>${rent.submit_date}
			<td><c:out value="${rent.late}" ></c:out>
			<c:if test="${rent.brent==-1}">
			<td>대출중
			</c:if>
			<td><a href="">반납연기</a>
		</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>