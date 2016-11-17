<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div style = "float:right; font-size:13px; ">
	<a href = "/" style="text-decoration:none; color:gray;">home ></a><a href = "#" style="text-decoration:none; color:gray;">도서관소식 >&nbsp;</a><b style="color: navy;">자유게시판</b>
	</div><br><br>
	<form role="form" method="post">

		<input type='hidden' name='num' value="${boardVO.num}">

	</form>

	<h2>상세보기 페이지</h2>

	<table border="1">
		<tr>
			<th>제목</th>
			<th><input type="text" name='title' class="form-control"
				value="${boardVO.title}" readonly="readonly">
		</tr>
		<tr>
			<th>내용</th>
			<th><textarea class="form-control" name="content" rows="3"
					readonly="readonly">${boardVO.content}</textarea></th>
		</tr>
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" class="form-control"
				value="${boardVO.id}" readonly="readonly"></th>
		</tr>
		<tr>
			<th colspan="2">
				<button type="button"
					onclick="location.href='modify?num=${boardVO.num}'">수정</button>
				<button type="button"
					onclick="location.href='remove?num=${boardVO.num}'">삭제</button> <a
				href='listAll'><button type="submit">목록보기</button></a>
			</th>
		</tr>

	</table>

	<form role="form" method="post">
		<input type="hidden" name="num" value="${boardVO.num}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" placeholder="Enter id" value="${ id }"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' placeholder="Enter Title">
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea name="content" rows="3" placeholder="Enter ..."></textarea></th>
			</tr>
			<tr>
				<th colspan="2"><button type="submit">확인</button>
			</tr>
		</table>
	</form>

	<table border="1">
		<tr>
			<th style="width: 40px" align="center">구분</th>
			<th align="center" width="80">ID</th>
			<th align="center" width="150">제목</th>
			<th align="center" width="300">내용</th>
			<th style="width: 80px" align="center">작성 일자</th>
			<th colspan="2"></th>
		</tr>

		<c:forEach items="${ clist }" var="clist" varStatus="var">
			<tr>
				<%-- <td align="center">${ pageMaker.totalCount - (page-1) * perPageNum)-var.count}</td> --%>
				<td align="center"> - </td>
				<td align="center">${ clist.id }</td>
				<td align="center">${ clist.title }</td>
				<td align="center">${ clist.content }</td>
				<td width="100" align="center"><fmt:formatDate
						value="${clist.rep_date}" pattern="yyyy-MM-dd" /></td>
				<th><button type="button"
						onclick="location.href='modify_re?num=${clist.num }&fnum=${clist.fnum }'">수정</button></th>
				<th>
					<button type="button"
						onclick="location.href='remove_re?num=${clist.num}&fnum=${clist.fnum }'">삭제</button>
				</th>
			</tr>
		</c:forEach>
	</table>
	    
	    
	    
	    
    <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="read${pageMaker.makeRepQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="read${pageMaker.makeRepQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="read${pageMaker.makeRepQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	
</body>
</html>