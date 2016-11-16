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
					id="keywordInput"></th>
				<th width="100"><button id='searchBtn'>Search</button></th>
			</tr>
		</table>
	</form>
	<br>
	<hr>
	<br>
	<table width="600">
		<tr>
			<th>검색 조건을 선택하시고,</th>
		</tr>
		<tr>
			<th>검색어를 입력한 후</th>
		</tr>
		<tr>
			<th>[[ 검색 ]] 버튼을 눌러 주세요</th>
		</tr>
	</table>

</body>
</html>