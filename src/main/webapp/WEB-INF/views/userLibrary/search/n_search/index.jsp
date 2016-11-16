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
				<th width="100">검색 날짜</th>
				<th width="400"><input type="date" name='start_date'> 부터 ~ <input type="date" name='end_date'> 까지</th>
				<th width="100"><button id='searchBtn'>Search</button></th>
			</tr>
		</table>

	</form>
	<br><hr><br>
	<table width="600" >
		<tr>
			<th>검색 시작 날짜를 선택하시고,</th>
		</tr>
		<tr>
			<th>검색 기준 날짜를 선택한 후</th>
		</tr>
		<tr>
			<th>[[ 검색 ]] 버튼을 눌러 주세요</th>
		</tr>
	</table>
	<%-- 	<jsp:include page="${content}">
		<jsp:param value="" name="" />
	</jsp:include>
 --%>


</body>
</html>