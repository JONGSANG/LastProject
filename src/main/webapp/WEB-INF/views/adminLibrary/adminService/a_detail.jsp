<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
var maxcount='${maxcount}';

if(maxcount=='full'){
	alert("최대인원 초과");
}
</script>
</head>
<body>
	<table>
		<tr>
			<th>제목</th>
			<th>${detail.title}</th>
		</tr>
		<tr>
			<td>시작일</td>
			<td>종료일</td>
			<td>현재인원</td>
		</tr>
		<tr>
			<td>${detail.start_date}"</td>
			<td>${detail.end_date}"</td>
			<td>${detail.tocnt}/${detail.max_cnt}</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td>아이디</td>
			<td>신청일</td>
			<td>신청상태</td>
			<td>처리</td>
		</tr>
		<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.id}</td>
			<td>${list.after_date}"</td>
			<c:if test="${list.state==1}">
			<td>승인완료</td>
			</c:if>
			<c:if test="${list.state==0}">
			<td>대기중</td>
			</c:if>
			<c:if test="${list.state==-1}">
			<td>승인거절</td>
			</c:if>
			<c:if test="${list.state==0}">
			<td>
			<form action="/adminLibrary/adminService/a_change" method="get">
			<input type="hidden" name="tocnt" value="${detail.tocnt}">
			<input type="hidden" name="max_cnt" value="${detail.max_cnt}">
			<input type="hidden" name="id" value="${list.id}">
			<input type="hidden" name="anum" value="${list.anum}">
			<select name="state">
				<option value="1">승인</option>
				<option value="-1">거절</option>
			</select>
			<input type="submit" value="변경">
			</form>
			</td>
			</c:if>
			<c:if test="${list.state!=0}">
			<td>처리완료</td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	
	<c:if test="${pageMaker.prev}">
		<li><a
			href="a_detail${pageMaker.detail(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="a_detail${pageMaker.detail(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="a_detail${pageMaker.detail(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if>
</body>
</html>