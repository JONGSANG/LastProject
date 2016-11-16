<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
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

<%-- 
	<c:forEach items="${list}" var="bookVO">
		<table border="1">
			<tr>
				<td>${bookVO.bNo}</td>
				<td>${bookVO.bTitle}</td>
				<td>${bookVO.bYear }</td>
			</tr>
		</table>
	</c:forEach>
 --%>


	<table width="600" border="1">
		<tr>
			<th width="50">번호</th>
			<th width="350">책 제목</th>
			<th width="100">저자명</th>
			<th width="100">출판사</th>
			<th width="100">대출 여부</th>
		</tr>
		<c:forEach items="${list}" var="bookVO" varStatus="var">
			<tr>
				<th width="50">${var.index }</th>
 				<%-- <th width="50">${bookVO.bNo }</th> --%>
				<th width="350"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></th>
				<th width="100">${bookVO.bWriter}</th>
				<th width="100">${bookVO.bCompany}</th>
				<th width="100">
				<c:if test="${bookVO.bRent == 1}">
					대출 가능
				</c:if>
				<c:if test="${bookVO.bRent != 1 }">
					대출 불가
				</c:if>
				
				</th>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>