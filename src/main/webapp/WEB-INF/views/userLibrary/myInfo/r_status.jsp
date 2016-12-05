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
	<%-- <table>
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
				<td>구현예정 
				<c:if test="${reserve.brent==1}"> <td>대출중 </c:if>
				<td><a href="">취소</a></td>
			</tr>
		</c:forEach>
	</table> --%>
	
	<table class="listtable">
	<tr>
		<th width="100px">책번호</th>
		<th width="320px">책제목</th>
		<th width="130px">예약일</th>
		<th width="130px">예약만료일</th>
		<th width="90px">취소</th>
	</tr>
	
	<c:if test="${empty reserve}">
	<tr>
	<td colspan="6">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	
	<c:forEach items="${reserve}" var="reserve">
	<tr>
		<td>${reserve.bno}</td>
		<td>${reserve.btitle}</td>
		<td>${reserve.reserve_date}</td>
		<c:if test="${reserve.reserve_end==NULL}">
		<td>반납 미완료</td>
		</c:if>
		<c:if test="${reserve.reserve_end!=NULL}">
		<td>${reserve.reserve_end}</td>
		</c:if>
		
		<td><a href="cancleR?bno=${reserve.bno}">취소</a></td>
	</tr>
	</c:forEach>
</table>
	
	</div>
</body>
</html>