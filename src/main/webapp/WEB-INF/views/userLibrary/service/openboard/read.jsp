<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>공개 자료실</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">공개 자료실</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>공개 자료실</b>
		</div>
	</section>
	<div id="insidebody">
<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${o_BoardVO.num}</td>
	<th width="100px">ID</th><td  width="120px" id="listTitle" align="center">${o_BoardVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${o_BoardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${o_BoardVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th><td id="listTitle" colspan="7">${o_BoardVO.title}</td>
	</tr>
	<tr>
		<td id="listcontents" colspan="8" style="height: 400px"><textarea rows="20" cols="105" style="resize: none;" readonly="readonly">${o_BoardVO.content}</textarea></td>
	</tr>
	<tr>
	<th>첨부파일</th><td colspan="7" style="padding-left: 5px"> <a href = "/resources/file/${o_BoardVO.newname }" download>${o_BoardVO.orgname }</a></td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 5px; border: none;">
			<div class="fright">
			<!-- 게시글을 읽는건 아무나 가능하지만 게시글에 대한 수정과 삭제는 관리자권한을 가진 ROLE_ADMIN 만 가능함-->
			<security:authorize access="hasRole('ROLE_ADMIN')" >
			<form action = "delete", method = "POST">
				<button style="width: 50px" type="button"
					onclick="location.href='modify?num=${o_BoardVO.num}'">수정</button>
					<input type = "hidden" name = "num" value = "${o_BoardVO.num }">
					<input type = "hidden" name = "newname" value = "${o_BoardVO.newname }">
					<button style="width: 50px" name = submit>삭제</button>
					</security:authorize>
					<a href='list'><button type="button">목록보기</button></a>
					</form>
			</div>
			</td>
		</tr>
	</table>
</div>
</body>
</html>