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
	
	<%-- <table>
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
			<c:if test="${rent.brent==-1}"><td>대출중 </c:if>
			<td><a href="">반납연기</a>
		</tr>
		</c:forEach>
	</table> --%>
	
	<table class="listtable">
	<tr>
		<th width="100px">책제목</th>
		<th width="110px">대출일</th>
		<th width="140px">반납예정일</th>
		<th width="140px">연체일수</th>
		<th width="140px">상태</th>
		<th width="140px">반납연기</th>
	</tr>
	<c:if test="${empty rent}">
	<tr>
	<td colspan="6">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	<c:forEach items="${rent}" var="rent">
	<tr>
		<td>${rent.btitle}</td>
		<td>${rent.rent_date}</td>
		<td>${rent.submit_date}</td>
		<td><c:out value="${rent.late}" ></c:out></td>
		<c:if test="${rent.brent==-1}"><td style="color: red;">대출중 </c:if>
		<c:if test="${rent.brent!=-1}"><td></td></c:if>
		<td><a href="">반납연기</a>
	</tr>
	</c:forEach>
</table>
	
	</div>
</body>
</html>