<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>행사신청 내역</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">행사신청 내역</font>
		</div>
		<div id="link">
			<div id="link37">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>행사신청 내역</b>
		</div>
	</section>
	<div id="insidebody">
	<%-- <table>
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
				<td><fmt:formatDate value="${culture.culture_date}"
						pattern="yyyy.MM.dd" /> 
						<c:if test="${culture.state==1}"> <td>승인완료 </td></c:if> <c:if test="${culture.state==0}"> <td>신청대기중 </c:if> 
						<c:if test="${culture.state==-1}">
						<td>승인거절
					</c:if>
			</tr>
		</c:forEach>
	</table> --%>

<table class="listtable">
	<tr>
		<th width="100px">카테고리</th>
		<th width="310px">글제목</th>
		<th width="80px">인원</th>
		<th width="140px">시작일</th>
		<th width="130px">신청상태</th>
	</tr>
	
	<c:if test="${empty culture}">
	<tr>
	<td colspan="5">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	
	<c:forEach items="${culture}" var="culture">
	<tr>
		<td>${culture.cselect}</td>
		<td>${culture.title}</td>
		<td>${culture.tocnt}/${culture.max_cnt}</td>
		<td><fmt:formatDate value="${culture.culture_date}" pattern="yyyy.MM.dd" /></td>
		<c:if test="${culture.state==1}"> <td style="color: red;">승인완료 </td></c:if> <c:if test="${culture.state==0}"> <td style="color: red;">신청대기중</td></c:if> <c:if test="${culture.state==-1}"> <td style="color: red;">승인거절</td> </c:if>
			</tr>
	</tr>
	</c:forEach>
</table>

	<%-- <table>
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
				<td><fmt:formatDate value="${after.after_date}"
						pattern="yyyy.MM.dd" /> <c:if test="${after.state==1}">
						<td>승인완료
					</c:if> <c:if test="${after.state==0}">
						<td>신청대기중
					</c:if> <c:if test="${after.state==-1}">
						<td>승인거절
					</c:if>
			</tr>
		</c:forEach>
	</table> --%>
	
	<table class="listtable" style="margin-top: 20px">
	<tr>
		<th width="100px">카테고리</th>
		<th width="310px">글제목</th>
		<th width="80px">인원</th>
		<th width="140px">시작일</th>
		<th width="130px">신청상태</th>
	</tr>
	
	<c:if test="${empty after}">
	<tr>
	<td colspan="5">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	
	<c:forEach items="${after}" var="after">
	<tr>
		<td>${after.aselect}</td>
		<td>${after.title}</td>
		<td>${after.tocnt}/${after.max_cnt}</td>
		<td><fmt:formatDate value="${after.after_date}" pattern="yyyy.MM.dd" /></td>
		<c:if test="${after.state==1}"> <td style="color: red;">승인완료 </td></c:if> <c:if test="${after.state==0}"> <td style="color: red;">신청대기중</td></c:if> <c:if test="${after.state==-1}"> <td style="color: red;">승인거절</td> </c:if>
			</tr>
	</tr>
	</c:forEach>
</table>
	
	</div>
</body>
</html>