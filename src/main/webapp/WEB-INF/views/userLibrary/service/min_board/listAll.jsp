<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	
<!DOCTYPE html>
<html>
<head>
<title>민원 게시판</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">민원 게시판</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>민원 게시판</b>
		</div>
	</section>
	<div id="insidebody">
<table class="listtable">
	<tr>
		<th width="80px">번호</th>
		<th width="100px">민원종류</th>
		<th width="290px">제목</th>
		<th width="100px">ID</th>
		<th width="120px">작성 일자</th>
		<th width="80px">조회수</th>
	</tr>
	<c:if test="${empty list }">
		<tr>
			<td colspan = "7">작성된 글이 없습니다.</td>
		</tr>
		</table>
	</c:if>
	<c:forEach items="${list}" var="list" varStatus="var">
	<tr>
		<td>${list.num}</td>
		<td>${list.mselect}</td>
		<td style="width: 280px" id="overf"><a href='read?num=${list.num}'>${list.title} 
      	<c:if test="${list.re_cnt != 0}">[ ${list.re_cnt} ]</c:if></a></td>
		<td>${list.id}</td>
		<td><fmt:formatDate value="${list.min_date}" pattern="yyyy-MM-dd"/></td>
		<td>${list.viewcnt}</td>
	</tr>
	</c:forEach>
</table>

<div class="text-center">
<security:authorize access="hasRole('ROLE_USER')">
<a href='/userLibrary/service/min_board/register' style="float: right;">
<button type="submit" class="btn btn-primary">글쓰기</button></a>
</security:authorize>
</div>
    
		<div class="paging">
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
