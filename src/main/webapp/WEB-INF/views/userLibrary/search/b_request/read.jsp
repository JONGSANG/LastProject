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
		<div id="link">
			<div id="link26">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>희망도서신청</b>
		</div>
	</section>
	<div id="insidebody">
<<<<<<< HEAD
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
=======
		<form role="form" method="post">

			<input type='hidden' name='num' value="${boardVO.num}">

		</form>

		<h2>상세보기 페이지</h2>

		<table border="1">
			<tr>
				<th>제목</th>
				<th><input type="text" name='bName' class="form-control"
					value="${boardVO.bName}"></th>
			</tr>

			<tr>
				<th width="80">저자 명</th>
				<th><input type="text" name='bWriter' class="form-control"
					value="${boardVO.bWriter}"></th>
			</tr>
			<tr>
				<th width="80">출판사</th>
				<th><input type="text" name='bCompany' class="form-control"
					value="${boardVO.bCompany}"></th>
			</tr>
			<tr>
				<th width="80">출간년도</th>
				<th><input type="text" name='bYear' placeholder="ex) 2015"
					class="form-control" value="${boardVO.bYear}"></th>
			</tr>
			<tr>
				<th>희망 사유(책 소개)</th>
				<th><textarea class="form-control" name="bIntro" rows="3">${boardVO.bIntro}</textarea></th>
			</tr>
			<tr>
				<th>ID</th>
				<th><input type="text" name="id" class="form-control"
					value="${boardVO.id}"></th>
			</tr>
			<tr>
				<th colspan="2"><c:if test="${boardVO.id==id}">
						<button type="button"
							onclick="location.href='modify?num=${boardVO.num}'">수정</button>
						<button type="button"
							onclick="location.href='remove?num=${boardVO.num}'">삭제</button>
					</c:if> <a href='listAll'><button type="submit">목록보기</button></a></th>
			</tr>

		</table>

		<form role="form" method="post">
			<input type="hidden" name="num" value="${boardVO.num}"> <input
				type="hidden" name="id" value="${boardVO.id}">
			<table border="1">
				<tr>
					<td id="regiwritetitle" colspan="2">댓글</td>
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
					<td align="center">-</td>
					<td align="center">${ clist.id }</td>
					<td align="center">${ clist.title }</td>
					<td align="center">${ clist.content }</td>
					<td width="100" align="center"><fmt:formatDate
							value="${clist.rep_Date}" pattern="yyyy-MM-dd" /></td>
					<th><button type="button"
							onclick="location.href='modify_re?num=${clist.num }&hNum=${clist.hNum }'">수정</button></th>
					<th>
						<button type="button"
							onclick="location.href='remove_re?num=${clist.num}&hNum=${clist.hNum }'">삭제</button>
					</th>
				</tr>
>>>>>>> a4566541effc86ab1cfc46e53478fd1adce349f3
			</c:forEach>
		</table>




		<div class="text-center">
			<ul class="pagination">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="read${pageMaker.makeHopeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
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