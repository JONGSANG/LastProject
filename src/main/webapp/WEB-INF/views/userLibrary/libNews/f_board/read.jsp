<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">자유게시판</font>
		</div>
		<div id="link">
			<div id="link55">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>자유게시판</b>
		</div>
	</section>
	<div id="insidebody">
	<form role="form" method="post">
		<input type='hidden' name='num' value="${boardVO.num}">
	</form>
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${boardVO.num}</td>
	<th width="100px">ID</th><td  width="120px" id="listTitle" align="center">${boardVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${boardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${boardVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th><td id="listTitle" colspan="7">${boardVO.title}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="8" style="height: 400px"><textarea rows="20" cols="105" style="resize: none;" readonly="readonly">${boardVO.content}</textarea></td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 5px; border: none;">
			<div class="fright">
			<c:if test="${boardVO.id==id}">
				<button style="width: 50px" type="button"
					onclick="location.href='modify?num=${boardVO.num}'">수정</button>
				<button style="width: 50px" type="button"
					onclick="location.href='remove?num=${boardVO.num}'">삭제</button>
			</c:if> 
					<a href='listAll'><button type="submit">목록보기</button></a>
			</div>
			</td>
		</tr>
	</table>
	<div class="commentdiv">
	<form role="form" method="post">
		<input type="hidden" name="num" value="${boardVO.num}">
		<input type="hidden" name="id" value="${boardVO.id}">
		<table>
		<tr>
		<td id="regiwritetitle" colspan="2">댓글</td>
		</tr>
		<tr>
		<td style="padding-top: 5px"><textarea id="regiwrite" style="padding: 5px 0 0 5px" name="content" rows="5" cols="102" placeholder="내용을 입력해 주세요." ></textarea></td>
		</tr>
		<tr>
			<td><div class="fright"><button type="submit">댓글 작성</button></td></div>
		</tr>
		</table>
		</form>
	</div>
<div class="margintop10">
	<table class="commentre" style="border-top:#C4CDD9 1px solid; ">
		<c:forEach items="${ clist }" var="clist" varStatus="var">
		<tr>
		<td id="commentstart" >${ clist.id}</td><td id="commentstart" width="710">&nbsp;|&nbsp;<fmt:formatDate value="${clist.rep_date}" pattern="yyyy-MM-dd" /></td>
		</tr>
		<tr>
		<td colspan="2" style="height: 50px; padding-top: 5px"><textarea style=" resize: none;" rows="4" cols="105">${ clist.content }</textarea></td>
		</tr>
		<tr style="border-bottom: #C4CDD9 1px solid; ">
		<td colspan="2">
		<c:if test="${clist.id==id}">
		<div class="fright" style="padding-bottom: 10px">
			<button type="button" style="width: 50px" onclick="location.href='remove_re?num=${clist.num}&fnum=${clist.fnum }'">삭제</button>
		</div>
		</c:if>
		</td>
		</tr>
		</c:forEach>
	</table>
	    </div>
	    
    <div class="paging">
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
	</div>
</body>
</html>