<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>문화 행사</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">문화 행사</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>문화 행사</b>
		</div>
	</section>
	<div id="insidebody">
	<table class="listtable">
	<tr>
		<th width="60px">번호</th>
		<th width="70px">카테고리</th>
		<th width="280px">제목</th>
		<th width="90px">최대인원수</th>
		<th width="90px">현재인원수</th>
		<th width="100px">작성 일자</th>
		<th width="80px">조회수</th>
	</tr>
	<c:if test="${empty list }">
		<tr>
			<td colspan = "7">작성된 글이 없습니다.</td>
		</tr>
	</c:if>
	<!-- openboard_list 메소드에서 전체 목록을 불러올때 'list'라고 지정해뒀기때문에 list. 으로 시작함.
		 forEach문을 사용해서 반복처리함 -->
	<c:forEach items="${list}" var="list" varStatus="var">
	<tr>
		<td>${list.num }</td>
		<td>${list.cselect}</td>
		<td style="padding-top: 5px"><a href='read?num=${list.num}'>${list.title}</td>
		<td>${list.max_cnt }</td>
		<td>${list.tocnt}</td>
		<td><fmt:formatDate value="${list.write_date}" pattern="yyyy-MM-dd"/></td>
		<td>${list.viewcnt}</td>
	</tr>
	</c:forEach>
</table>
<div class="text-center">
    <security:authorize access="hasRole('ROLE_ADMIN')">
	<a href='/userLibrary/service/culture/write' style="float: right;">
	<button type="submit" class="btn btn-primary">글쓰기</button></a>
	</security:authorize>
	
	<div class="paging">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
		</div>
</div>

<script>
	var result = '${msg}';
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>
</div>
</body>
</html>