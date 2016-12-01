<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>도서검색</title>
</head>
<body>
<h3>도서 등록</h3>
<form action="registBook" method="post">
	<table width="600" border="1" >
		<tr>
			<th width="150" rowspan="6">
			이미지 등록칸..</th>
			<th width="90">번호</th>
			<th width="250">${BNO}</th>
			<input type="hidden" value="${BNO}" name="bNo">
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250"><input type="text" name="bTitle" placeholder=" * 제목을 입력해주세요"></th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100"><input type="text" name="bWriter"placeholder=" ex) 이OO"></th>
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100"><input type="text" name="bCompany" placeholder=" ex) kosta"></th>
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100"><input type="text" name="bYear" maxlength="4" placeholder=" ex) 2016"> 년</th>
			</tr>
			<tr>
			<th width="50">구입 일자</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<input type="date" name="buy_date">
			</th>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<th colspan="3" height="300" align="left">
				<textarea style="resize: none;" name="bIntro" rows="16" cols="72" placeholder=" * 간단한 책소개를 입력하세요." ></textarea>
			</th>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>

</body>
</html>