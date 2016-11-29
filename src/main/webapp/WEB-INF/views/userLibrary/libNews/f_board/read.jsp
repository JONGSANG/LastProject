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
	<th width="100px">아이디</th><td  width="120px" id="listTitle" align="center">${boardVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${boardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${boardVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th><td id="listTitle" colspan="7">${boardVO.title}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="8" style="height: 400px">${boardVO.content}</td>
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
<br><br><br><br><br><br>
	<form role="form" method="post">
		<input type="hidden" name="num" value="${boardVO.num}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" placeholder="Enter id" value="${ id }" readonly="readonly"></th>
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
				<th colspan="2"><button type="submit">확인</button></th>
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
				<td align="center"> - </td>
				<td align="center">${ clist.id }</td>
				<td align="center">${ clist.title }</td>
				<td align="center">${ clist.content }</td>
				<td width="100" align="center"><fmt:formatDate
						value="${clist.rep_date}" pattern="yyyy-MM-dd" /></td>
						
				
				<th>
				<c:if test="${clist.id==id}">
				<button type="button"
						onclick="location.href='modify_re?num=${clist.num }&fnum=${clist.fnum }'">수정</button>
				
					<button type="button"
						onclick="location.href='remove_re?num=${clist.num}&fnum=${clist.fnum }'">삭제</button>
				</c:if>
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
	</div>
</body>
</html>