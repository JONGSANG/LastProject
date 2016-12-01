<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<form role="form" method="post">

		<input type='hidden' name='num' value="${boardVO.num}">

	</form>
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">책제목</th><td  width="200px" id="listTitle" align="center">${boardVO.bName}</td>
	<th width="80px">저자명</th><td  width="200px" id="listTitle" align="center">${boardVO.bWriter}</td>
	<th width="80px">작성자</th><td  width="100px" id="listTitle" align="center">${boardVO.id}</td>
	</tr>
	<tr>
	<th>출판사</th><td id="listTitle" align="center">${boardVO.bCompany}</td>
	<th>출간년도</th><td id="listTitle" style="padding-left: 10px">${boardVO.bYear}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="6" style="height: 400px"><textarea rows="20" cols="105" style="resize: none;" readonly="readonly">${boardVO.bIntro}</textarea></td>
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
		<td id="commentstart" >${ clist.id}</td><td id="commentstart" width="710">&nbsp;|&nbsp;<fmt:formatDate value="${clist.rep_Date}" pattern="yyyy-MM-dd" /></td>
		</tr>
		<tr>
		<td colspan="2" style="height: 50px; padding-top: 5px"><textarea style=" resize: none;" rows="4" cols="105">${ clist.content }</textarea></td>
		</tr>
		<tr style="border-bottom: #C4CDD9 1px solid; ">
		<td colspan="2">
		<c:if test="${clist.id==id}">
		<div class="fright" style="padding-bottom: 10px">
			<button type="button" style="width: 50px" onclick="location.href='remove_re?num=${clist.num}&hNum=${clist.hNum }'">삭제</button>
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
					href="read${pageMaker.makeHopeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="read${pageMaker.makeHopeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="read${pageMaker.makeHopeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	</div>
</body>
</html>