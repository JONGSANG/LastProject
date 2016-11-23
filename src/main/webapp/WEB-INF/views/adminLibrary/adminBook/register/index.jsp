<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- <table width="600" border="1" class="table table-bordered table-hober dataTable">
 -->
 <table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
 	<tr>
 
		<th width="50">번호</th>
		<th width="350">책 제목</th>
		<th width="100">저자명</th>
		<th width="100">출판사</th>
		<th width="100">대출 여부</th>
	</tr>
	
	
	<c:forEach items="${list}" var="bookVO" >
		<tr>
			<%-- <th width="50">${var.index }</th> --%>
			<td width="50">${bookVO.bNo }</td>
			<td width="350"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></td>
			<td width="100">${bookVO.bWriter}</td>
			<td width="100">${bookVO.bCompany}</td>
			<td width="100">${bookVO.bCompany}</td>
		</tr>
	</c:forEach>
</table>
    <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="index${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="index${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="index${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>



</body>
</html>