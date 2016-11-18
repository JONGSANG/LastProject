<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div style = "float:right; font-size:13px; ">
	<a href = "/" style="text-decoration:none; color:gray;">home ></a><a href = "#" style="text-decoration:none; color:gray;">서비스 >&nbsp;</a><b style="color: navy;">민원게시판</b>
	</div><br><br>
<table border="1">
	<tr>
		<th style="width: 40px" align="center">번호</th>
		<th align="center" width="300">제목</th>
		<th align="center" width="150">민원 종류</th>
		<th align="center" width="130">ID</th>
		<th align="center">작성 일자</th>
		<th style="width: 60px" align="center">조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="list" varStatus="var">
	<tr>
		<td align="center">${var.index+1}</td>
		<td align="center"><a href='read?num=${list.num}'>${list.title} 
      	<c:if test="${list.re_cnt != 0}">[ ${list.re_cnt} ]</c:if></a></td>
		<td align="center">${list.mselect}</td>
		<td align="center">${list.id}</td>
		<td align="center"><fmt:formatDate value="${list.min_date}" pattern="yyyy-MM-dd"/>
		</td>
		<td align="center">${list.viewcnt}</td>
	</tr>
	</c:forEach>
</table>

<a href='/userLibrary/service/min_board/register'><button type="submit" class="btn btn-primary">글쓰기</button></a>
    
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

</body>
</html>
