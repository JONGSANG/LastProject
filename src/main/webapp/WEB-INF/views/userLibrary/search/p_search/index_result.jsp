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
<div id="insidebody">
	<table class="listtable">
	<tr>
		<th width="80px">출간 월</th>
		<th width="430px">간행물 제목</th>
		<th width="140px">저자명</th>
		<th width="100px">출간 년도</th>
	</tr>
	<c:forEach items="${list}" var="bookVO" varStatus="var">
	<tr>
		<td align="center">${bookVO.p_bMonth }&nbsp;호</td>
		<td style="width: 430px" id="overf" align="center"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></td>
		<td align="center">${bookVO.bWriter}</td>
		<td align="center">${bookVO.bYear}</td>
	</tr>
	</c:forEach>
</table>
	
	<div class="text-center">
		  <div class="paging">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="result${pageMaker.makeResult(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="result${pageMaker.makeResult(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="result${pageMaker.makeResult(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	</div>
	</div>
</body>
</html>