<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>방과후 학교</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">방과후 학교</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>방과후 학교</b>
		</div>
	</section>
<h3>after_read page</h3><br>
	<table border = "1">
		<tr>
			<th>글번호 : ${afterVO.num }</th>
			<th>글쓴날짜 : <fmt:formatDate value="${afterVO.write_date}" pattern="yyyy-MM-dd"/></th>
		</tr>
		<tr>
			<th>시작날짜 : ${afterVO.start_date }</th>
			<th>끝나는날짜 : ${afterVO.end_date }</th>
		</tr>
		<tr>
			<th>최대인원수 : ${afterVO.max_cnt }</th>
			<th>현제인원수 : ${after_tocnt}</th>
		</tr>
		<tr>
			<th colspan = "2" align = "left">제목 : (${afterVO.aselect})  ${afterVO.title }</th>
		</tr>
		<tr>
			<th colspan = "2" align = "left">내용 : ${afterVO.content }</th> 
		</tr>
	</table><br>

<c:if test="${isID!=0 }">
이미 신청하셧습니다.<br>
취소 하실라면 아래버튼을 눌러주시기 바랍니다.<br>
	<form action = "/userLibrary/service/after/joindel" method = "POST">
		<input type = "hidden" name = "anum" value = "${afterVO.num }">
		<input type = "submit" value = "신청취소">
	</form>
</c:if>
<security:authorize access="hasRole('ROLE_USER')">
	<c:if test="${isID==0 }">
			<c:if test="${after_tocnt != afterVO.max_cnt}">
				<input type = "button" value = "신청하기" onclick = "location.href ='/userLibrary/service/after/join?num=${afterVO.num}'">
			</c:if>
	</c:if>
</security:authorize>

<input type = "button" value = "목록으로" onclick = "location.href='/userLibrary/service/after/list'">

<security:authorize access="hasRole('ROLE_ADMIN')" >
	<form action = "modify", method = "GET">
		<input type = "hidden" name = "num" value = "${afterVO.num }">
		<input type = "submit" value = "수정">
	</form>

	<form action = "delete", method = "POST">
		<input type = "hidden" name = "num" value = "${afterVO.num }">
		<input type = "submit" value = "삭제">
	</form>
</security:authorize>
</body>
</html>