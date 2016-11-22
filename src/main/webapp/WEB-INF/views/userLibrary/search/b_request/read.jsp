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
				value="${boardVO.bWriter}">
		</tr>
		<tr>
			<th width="80">출판사</th>
			<th><input type="text" name='bCompany' class="form-control"
				value="${boardVO.bCompany}">
		</tr>
		<tr>
			<th width="80">출간년도</th>
			<th><input type="text" name='bYear' placeholder="ex) 2015" class="form-control"
				value="${boardVO.bYear}">
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
			<th colspan="2">
				<button type="submit">저장</button>
				<button type="reset">취소</button>
			</th>
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
				<td align="center"> - </td>
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
	
</body>
</html>