<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<form role="form" method="post">

		<input type='hidden' name='num' value="${boardVO.num}">

	</form>

	<%-- <h2>상세보기 페이지</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th><input type="text" name="id" class="form-control"
				value="${boardVO.id}" readonly="readonly"></th>
		</tr>
		<tr>
			<th>민원 종류</th>
			<th><input type="text" name="mselect" class="form-control"
				value="${boardVO.mselect}" readonly="readonly"></th>
		</tr>
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
			<th colspan="2">
			<c:if test="${boardVO.id==id}">
				<button type="button"
					onclick="location.href='modify?num=${boardVO.num}'">수정</button>
				<button type="button"
					onclick="location.href='remove?num=${boardVO.num}'">삭제</button> 
			</c:if>
				<a href='listAll'><button type="submit">목록보기</button></a>
			</th>
		</tr>

	</table> --%>
	
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${boardVO.num}</td>
	<th width="90px">민원종류</th><td width="70px" id="listTitle" align="center">${boardVO.mselect}</td>
	<th width="50px">ID</th><td  width="100px" id="listTitle" align="center">${boardVO.id}</td>
	<th width="70px">조회수</th><td  width="60px" id="listTitle" align="center">${boardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="100px" id="listTitle" align="center"><fmt:formatDate value="${boardVO.min_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th><td id="listTitle" colspan="9">${boardVO.title}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="10" style="height: 400px"><textarea rows="20" cols="105" style="resize: none;" readonly="readonly">${boardVO.content}</textarea></td>
	</tr>
		<tr>
			<td colspan="10" style="padding-top: 5px; border: none;">
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
	
	
	
	
	<%-- <form role="form" method="post">
		<input type="hidden" name="num" value="${boardVO.num}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" placeholder="Enter id" value="${ id }"  readonly="readonly"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name='title' placeholder="Enter Title">
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea name="content" rows="3" placeholder="내용을 입력하세요"></textarea></th>
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

		<c:forEach items="${clist}" var="clist" varStatus="var">
			<tr>
				<td align="center"> - </td>
				<td align="center">${clist.id }</td>
				<td align="center">${clist.title }</td>
				<td align="center">${clist.content }</td>
				<td width="100" align="center"><fmt:formatDate
						value="${clist.min_date}" pattern="yyyy-MM-dd" /></td>
				<c:if test="${clist.id==id}">
				<th><button type="button"
						onclick="location.href='modify_re?num=${clist.num }&mnum=${clist.mnum }'">수정</button></th>
				<th>
					<button type="button"
						onclick="location.href='remove_re?num=${clist.num}&mnum=${clist.mnum }'">삭제</button>
				</th>
				</c:if>
			</tr>
		</c:forEach>
	</table> --%>
	<security:authorize access="hasRole('ROLE_ADMIN')">
	<div class="commentdiv">
	<form role="form" method="post">
		<input type="hidden" name="num" value="${boardVO.num}">
		<input type="hidden" name="id" value="${id}">
		<table>
		<tr>
		<td id="regiwritetitle">댓글</td>
		</tr>
		<tr>
		<td style="padding-top: 5px"><textarea id="regiwrite" style="padding: 5px 0 0 5px" name="content" rows="5" cols="107" placeholder="내용을 입력해 주세요." ></textarea></td>
		</tr>
		<tr>
			<td><div class="fright"><button type="submit">댓글 작성</button></td></div>
		</tr>
		</table>
		</form>
	</div>
	</security:authorize>
<div class="margintop10">
	<table class="commentre" style="border-top:#C4CDD9 1px solid; ">
		<c:forEach items="${ clist }" var="clist" varStatus="var">
		<tr>
		<td id="commentstart" >${ clist.id}</td><td id="commentstart" width="710">&nbsp;|&nbsp;<fmt:formatDate value="${clist.min_date}" pattern="yyyy-MM-dd" /></td>
		</tr>
		<tr>
		<td colspan="2" style="height: 50px; padding-top: 5px"><textarea style=" resize: none;" rows="4" cols="105">${ clist.content }</textarea></td>
		</tr>
		<tr style="border-bottom: #C4CDD9 1px solid; ">
		<td colspan="2">
		<c:if test="${clist.id==id}">
		<div class="fright" style="padding-bottom: 10px">
			<button type="button" style="width: 50px" onclick="location.href='modify_re?num=${clist.num }&mnum=${clist.mnum }'">수정</button>
			<button type="button" style="width: 50px" onclick="location.href='remove_re?num=${clist.num}&mnum=${clist.mnum }'">삭제</button>
		</div>
		</c:if>
		</td>
		</tr>
		</c:forEach>
	</table>
	    </div>
	    
    <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="read${pageMaker.makeMRepQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="read${pageMaker.makeMRepQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="read${pageMaker.makeMRepQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
		</div>
	
</body>
</html>