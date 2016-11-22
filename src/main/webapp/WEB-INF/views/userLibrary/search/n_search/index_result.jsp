<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>신착도서</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">신착도서</font>
		</div>
		<div id="link">
			<div id="link24">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>신착도서</b>
		</div>
</section>
	<form action="result" method="get">
		<table width="600" border="1">
			<tr>
				<th width="100">검색 날짜</th>
				<th width="400"><input type="date" name='start_date'>
					부터 ~ <input type="date" name='end_date'> 까지</th>
				<th width="100"><button id='searchBtn'>Search</button></th>
			</tr>
		</table>
	</form>


	<table width="600" border="1">
		<tr>
			<th width="50">인련 번호</th>
			<th width="350">책 제목</th>
			<th width="100">저자명</th>
			<th width="100">출판사</th>
			<th width="100">대출 여부</th>
		</tr>
		<c:forEach items="${list}" var="bookVO" varStatus="var">
			<tr>
				<%-- <th width="50">${var.index }</th> --%>
				<th width="50">${bookVO.bNo }</th>
				<th width="350"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></th>
				<th width="100">${bookVO.bWriter}</th>
				<th width="100">${bookVO.bCompany}</th>
				<th width="100"><c:if test="${bookVO.bRent == 1}">
					대출 가능
				</c:if> <c:if test="${bookVO.bRent != 1 }">
					대출 불가
				</c:if></th>

			</tr>
		</c:forEach>
	</table>
	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="result${pageMaker.makeNSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li 
					<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="result${pageMaker.makeNSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="result${pageMaker.makeNSearch(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>

</body>
</html>