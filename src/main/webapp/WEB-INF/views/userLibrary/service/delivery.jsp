<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
var dilApply='${dilApply}';

if(dilApply=='dilApply'){
	alert("도서배달 신청완료");
}
var maxBook='${maxBook}';

if(maxBook=='maxBook'){
	alert("1인당 최대 5권까지 대출 가능합니다");
}
</script>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">도서배달서비스</font>
		</div>
		<div id="link">
			<div id="link37">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>도서배달서비스</b>
		</div>
	</section>
<div id="insidebody">
<p>도서배달서비스(택배비 무료)
<p>KOSTA도서관에서는 책을 읽고 싶어도 도서관을 쉽게 찾지 못하는 장애인들을 위해 무료 도서배달서비스 제도를 시행하여 
<p>독서인구 저변 확대에 기여하고 문화수혜 불평등을 해소하고자 하오니 많은 이용바랍니다

<p>도서대출 및 반납
<p>대출신청 : 도서검색 -> 상세보기 -> 도서배달서비스(장애인만 이용가능)
<p>대출권수 : 월1회 1인 5권 이내 대출기간 : 30일 
<p>대출 및 반납요금 : 무료 
<p>자료반납 : 택배사에 방문수거요청 후 KOSTA도서관에 연락
<p>반납주소 : 경기도 성남시 분당구 삼평동 대왕판교로 670길(구 682번지) 유스페이스2 B동

<c:if test="${checkUser==-1 }">
<table class="listtable" style="margin-right: 10px">
<tr>
		<th width="290px">책제목</th>
		<th width="100px">대출일</th>
		<th width="100px">반납예정일</th>
		<th width="100px">대출신청일</th>
		<th width="100px">상태</th>
		<th width="80px">배송추적</th>
	</tr>
	<c:if test="${empty delivery }">
		<tr>
			<td colspan = "7">이용중인 서비스 내역이 없습니다.</td>
		</tr>
	</c:if>
	<c:forEach items="${delivery}" var="delivery">
	<tr>
		<td>${delivery.bTitle}</td>
		<td><fmt:formatDate value="${delivery.rent_date}" pattern="yyyy-MM-dd"/></td>
		<td><fmt:formatDate value="${delivery.submit_date}" pattern="yyyy-MM-dd"/> </td>
		<td><fmt:formatDate value="${delivery.request_date}" pattern="yyyy-MM-dd"/> </td>
		<c:if test="${delivery.state==0}">
			<td>대기중</td>
		</c:if>
		<c:if test="${delivery.state==1}">
			<td>승인완료</td>
		</c:if>
		<c:if test="${delivery.rent_num!=null}">
		<td><a href="http://service.epost.go.kr/trace.RetrieveEmsTrace.postal?ems_gubun=E&POST_CODE=${delivery.rent_num}" onClick="window.open(this.href, 'findID', 'width=714, height=553, left=500, top=150'); return false;">${delivery.rent_num}</a></td>
		</c:if>
		<c:if test="${delivery.rent_num==0}">
		<td>배송 대기중</td>
		</c:if>
	</tr>
	</c:forEach>
</table>
</c:if>
</div>
</body>
</html>