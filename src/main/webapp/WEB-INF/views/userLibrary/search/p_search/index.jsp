<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>간행물 검색</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">간행물 검색</font>
		</div>
		<div id="link">
			<div id="link25">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>간행물 검색</b>
		</div>
</section>

	<table width="600" border="1">
		<tr>
			<th width="50">번호</th>
			<!-- <th width="350">간행물 제목</th> -->
			<th width="450">간행물 제목</th>
			<th width="100">출간 년도</th>
			<th width="100">저자명</th>
			<!-- <th width="100">출판사</th> -->
		</tr>
		<c:forEach items="${list}" var="bookVO" varStatus="var">
			<tr>
				<th width="50">${var.count }</th>
				<%-- <th width="50">${bookVO.bNo }</th> --%>
				<%-- <th width="350"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bCompany}</a></th> --%>
				<th width="450"><a href="result?p_bNo=${bookVO.p_bNo}">${bookVO.bCompany}</a></th>
				<th width="100">${bookVO.bYear}</th>
				<th width="100">${bookVO.bWriter}</th>
				<%-- <th width="100">${bookVO.bCompany}</th> --%>
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