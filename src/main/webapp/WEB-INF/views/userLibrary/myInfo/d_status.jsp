<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>대출 현황</title>
<script>
	var delay='${delay}';
	var reserv='${reserv}';
	var ingdelay='${ingdelay}';
	var delaySuccess='${delaySuccess}';
	
    if(reserv=='reserv'){
    	alert("예약자가 대기중인 도서는 연장이 불가능합니다")
    }
    if(ingdelay=='ingdelay'){
    	alert("연체중인 도서가 있으므로 연장이 불가능합니다")
    }
    if(delaySuccess=='delaySuccess'){
    	alert(delay+" 까지 연기완료");
    }
</script>
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
		<c:if test="${rent.late==0}">
		<td>연체없음</td>
		</c:if>
		<c:if test="${rent.late!=0}">
		<td>${rent.late}일</td>
		</c:if>
		<c:if test="${rent.late==0}"><td>대출중</td> </c:if>
		<c:if test="${rent.late>0}"><td style="color: red;">연체중</td></c:if>
		<c:if test="${rent.delay==0&&rent.late==0}">
		<td><a href="/userLibrary/myInfo/delay?bno=${rent.bno}">반납연기</a>
		</c:if>
		<c:if test="${rent.delay==1||rent.late>0}">
		<td style="color: red;">연기불가</td>
		</c:if>
	</tr>
	</c:forEach>
</table>
	
	</div>
</body>
</html>