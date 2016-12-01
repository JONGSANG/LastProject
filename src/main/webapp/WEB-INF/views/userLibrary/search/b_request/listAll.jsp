<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>희망도서신청</title>
</head>
<body>
		<section>
	<div id="word">
	<font style="font-size: 40px">희망도서신청</font>
	</div>
	<div id="link"><div id="link26"><a href = "/" >home ></a><a href = "#" >검색 >&nbsp;</a></div><b>희망도서신청</b></div>
	</section>
	<div id="insidebody">
<table border="1">
	<tr>
		<th style="width: 40px" align="center">번호</th>
		<th align="center" width="300">제목</th>
		<th align="center" width="130">ID</th>
		<th align="center">작성 일자</th>
		<th style="width: 60px" align="center">조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="list" varStatus="var">
	<tr>
		<td align="center">${list.num }</td>
		<td align="center"><a href='read?num=${list.num}'>${list.bName} 
      	<c:if test="${list.re_cnt != 0}">[ ${list.re_cnt} ]</c:if></a></td>
		<td align="center">${list.id}</td>
		<td align="center"><fmt:formatDate value="${list.hope_Date}" pattern="yyyy-MM-dd"/>
		
		</td>
		<td align="center">${list.viewCnt}</td>
	</tr>
	</c:forEach>
</table>

<security:authorize access="hasRole('ROLE_USER')">
<a href='/userLibrary/search/b_request/register'>
<button type="submit" class="btn btn-primary">글쓰기</button></a>
</security:authorize>

    <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="listAll${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="listAll${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="listAll${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
    </div>
    
</body>
</html>
