<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	연속간행물 페이지
	<%-- 	<form action="result" method="get">
		<table width="600" border="1">
			<tr>
				<th width="100"><select name="searchType">
						<option value="bTitle">제목명</option>
						<option value="bWriter">저자명</option>
						<option value="bCompany">출판사</option>
				</select></th>
				<th width="400"><input type="text" name='keyword'
					id="keywordInput" value='${vo.keyword }'></th>
				<th width="100"><button id='searchBtn'>Search</button></th>
			</tr>
		</table>
	</form>
 --%>

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