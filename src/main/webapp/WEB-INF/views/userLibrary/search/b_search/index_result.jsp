<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>도서검색</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">도서검색</font>
		</div>
		<div id="link">
			<div id="link24">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>도서검색</b>
		</div>
	</section>
	<div id="insidebody">
	<div style="border-bottom: #d3d3d3 1px solid; padding-bottom: 20px; width: 770px">
	<form class="searchform cf" action="result" method="get">
				<select id="select_box" name="searchType">
					<option value="bTitle">제목명</option>
					<option value="bWriter">저자명</option>
					<option value="bCompany">출판사</option>
				</select> <input style="width: 590px; " type="text" name='keyword' id="keywordInput" value='${vo.keyword }'>
				<button id="searchBtn">검색</button>
			</form>
	</div>
	
	<%-- 
	<c:forEach items="${list}" var="bookVO">
		<table border="1">
			<tr>
				<td>${bookVO.bNo}</td>
				<td>${bookVO.bTitle}</td>
				<td>${bookVO.bYear }</td>
			</tr>
		</table>
	</c:forEach>
 --%>
	<div class="overf">
	<table class="listtable" style="margin-top: 20px">
	<tr>
		<th width="100px">책 번호</th>
		<th width="320px">책 제목</th>
		<th width="140px">저자명</th>
		<th width="100px">출판사</th>
		<th width="100px">대출 여부</th>
	</tr>
	<c:forEach items="${list}" var="bookVO" varStatus="var">
	<tr>
		<td width="100px" align="center">${bookVO.bNo }&nbsp;호</td>
		<td style="width: 320px" id="overf" align="center"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></td>
		<td width="140px" align="center">${bookVO.bWriter}</td>
		<td width="100px" align="center">${bookVO.bCompany}</td>
		<td width="100px" align="center">
		<c:if test="${bookVO.bRent == 1}">
					대출 가능
				</c:if> <c:if test="${bookVO.bRent != 1 }">
					대출 불가
		</c:if>
		</td>
	</tr>
	</c:forEach>
</table>
</div>

	<div class="text-center">
		  <div class="paging">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="result${pageMaker.makeBSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="result${pageMaker.makeBSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="result${pageMaker.makeBSearch(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
</div>
</div>
</body>
</html>