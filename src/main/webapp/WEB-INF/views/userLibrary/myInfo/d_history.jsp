<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>대출 내역</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">대출 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>대출 내역</b>
		</div>
	</section>
	<div id="insidebody">
	<table>
		<tr>
			<th>책번호
			<th>책제목
			<th>대출일
			<th>반납일
		</tr>
		<c:forEach items="${rent}" var="rent" >
		<tr>
			<td>${rent.bno}
			<td>${rent.btitle}
			<td><fmt:formatDate value="${rent.rent_date}" pattern="yyyy.MM.dd"/>
			<td><fmt:formatDate value="${rent.submit_date}" pattern="yyyy.MM.dd"/>
		</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>