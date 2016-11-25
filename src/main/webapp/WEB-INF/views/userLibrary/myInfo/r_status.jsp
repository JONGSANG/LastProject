<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>예약 현황</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">예약 현황</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>예약 현황</b>
		</div>
	</section>
	<div id="insidebody">
	<table>
		<tr>
			<th>책 제목
			<th>예약일
			<th>반납예정일
			<th>예약만료일
			<th>상태
			<th>취소
		</tr>
		<c:forEach items="${reserve}" var="reserve">
			<tr>
				<td>${reserve.btitle}
				<td>${reserve.reserve_date}
				<td>${reserve.submit_date}
				<td>구현예정 <c:if test="${reserve.brent==1}">
						<td>대출중
					</c:if>
				<td><a href="">취소</a>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>