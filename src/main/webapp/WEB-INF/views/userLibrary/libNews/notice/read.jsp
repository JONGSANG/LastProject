<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">공지사항</font>
		</div>
		<div id="link">
			<div id="link54">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>공지사항</b>
		</div>
	</section>
	<div id="insidebody">
	<form role="form" method="post">
		<input type='hidden' name='num' value="${noticeVO.num}">
	</form>
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${noticeVO.num}</td>
	<th width="100px">아이디</th><td  width="120px" id="listTitle" align="center">${noticeVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${noticeVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${noticeVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th><td id="listTitle" colspan="7">${noticeVO.title}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="8" style="height: 400px">${noticeVO.content}</td>
	</tr>
	<tr>
			<td colspan="8" style="padding-top: 5px; border: none;">
			<div class="fright">
			<c:if test="${boardVO.id==id}">
				<button style="width: 50px" type="button"
					onclick="location.href='modify?num=${noticeVO.num}'">수정</button>
				<button style="width: 50px" type="button"
					onclick="location.href='remove?num=${noticeVO.num}'">삭제</button>
			</c:if> 
					<a href='listAll'><button type="submit">목록보기</button></a>
			</div>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>