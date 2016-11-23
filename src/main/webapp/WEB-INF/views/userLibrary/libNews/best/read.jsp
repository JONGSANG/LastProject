<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<th width="150" rowspan="6"><img src="/resources/book_img/${read.BNO}.jpg" width="100"></th>
			<th width="90">도서 번호</th>
			<th width="250">${read.BNO}</th>
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250">${read.BTITLE}</th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100">${read.BWRITER}</th>
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.BCOMPANY}</th>
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.BYEAR} 년</th>
			</tr>
			<tr>
			<th width="50">구입 일자</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<fmt:formatDate value="${read.BUY_DATE}" pattern="yyyy.MM.dd"/>
			</th>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<th colspan="3" height="300" align="left">${read.BINTRO}</th>
		</tr>
	</table>
	<input type=button value="뒤로가기" onClick="history.back();">
	<a href='listBest'><button type="submit"> 목록 보기 </button></a>

</body>
</html>