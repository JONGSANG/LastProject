<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div style = "float:right; font-size:13px; ">
	<a href = "/" style="text-decoration:none; color:gray;">home ></a><a href = "#" style="text-decoration:none; color:gray;">검색 >&nbsp;</a><b style="color: navy;">도서검색</b>
	</div><br><br>
	검색 메인 인덱스 파일입니다.
	<form action="result" method="get">
		<table width="600" border="1">
			<tr>
				<th width="100"><select name="searchType">
						<option value="bTitle">제목명</option>
						<option value="bWriter">저자명</option>
						<option value="bCompany">출판사</option>
				</select></th>
				<th width="400"><input type="text" name='keyword'
					id="keywordInput" value='${vo.keyword }'></th>
				<th width="100"><button id='searchBtn'>Search</button></th>
			</tr>
		</table>
	</form>

	<table width="600" border="1">
		<tr>
			<th width="150" rowspan="6"><img
				src="/resources/book_img/${read.bNo}.jpg" width="100"></th>
			<th width="90">번호</th>
			<th width="250">${read.bNo }</th>
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250">${read.bTitle }</th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100">${read.bWriter}</th>
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.bCompany}</th>
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${read.bYear} 년</th>
			</tr>
			<tr>
			<th width="50">구입 일자</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<fmt:formatDate value="${read.buy_date}" pattern="yyyy.MM.dd"/>
			</th>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<th colspan="3" height="300" align="left">${read.bIntro}</th>
		</tr>
	</table>


</body>
</html>