<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th colspan="9">관리자정보
		</tr>
		<tr>
			<th>아이디
			<th>이름
			<th>전화번호
			<th>부서
			<th>직급
			<th>관리자삭제
		</tr>
		<tr>
			<td>${admin.id}
			<td>${admin.name}
			<td>${admin.phone}
			<td><form action="/adminLibrary/adminInfo/adminPart" method="post">
				<input type="hidden" name="id" value="${admin.id}">
				<select name="j_part">
					<c:if test="${admin.j_part=='행정지원과'}">
					<option selected="selected">행정지원과</option>
					</c:if>
					<c:if test="${admin.j_part!='행정지원과'}">
					<option>행정지원과</option>
					</c:if>
					<c:if test="${admin.j_part=='정보자료과'}">
					<option selected="selected">정보자료과</option>
					</c:if>
					<c:if test="${admin.j_part!='정보자료과'}">
					<option>정보자료과</option>
					</c:if>
					<c:if test="${admin.j_part=='독서문화진흥과'}">
					<option selected="selected">독서문화진흥과</option>
					</c:if>
					<c:if test="${admin.j_part!='독서문화진흥과'}">
					<option>독서문화진흥과</option>
					</c:if>
					<c:if test="${admin.j_part=='평생학습지원과'}">
					<option selected="selected">평생학습지원과</option>
					</c:if>
					<c:if test="${admin.j_part!='평생학습지원과'}">
					<option>평생학습지원과</option>
					</c:if>
					<c:if test="${admin.j_part=='정보봉사과'}">
					<option selected="selected">정보봉사과</option>
					</c:if>
					<c:if test="${admin.j_part!='정보봉사과'}">
					<option>정보봉사과</option>
					</c:if>
				</select>
				<input type="submit" value="부서변경">
			</form>
			<td><form action="/adminLibrary/adminInfo/adminLevel" method="post">
				<input type="hidden" name="id" value="${admin.id}">
				<select name="j_level">
					<c:if test="${admin.j_level=='도서관장'}">
					<option selected="selected">도서관장</option>
					</c:if>
					<c:if test="${admin.j_level!='도서관장'}">
					<option>도서관장</option>
					</c:if>
					<c:if test="${admin.j_level=='과장'}">
					<option selected="selected">과장</option>
					</c:if>
					<c:if test="${admin.j_level!='과장'}">
					<option>과장</option>
					</c:if>
					<c:if test="${admin.j_level=='담당팀장'}">
					<option selected="selected">담당팀장</option>
					</c:if>
					<c:if test="${admin.j_level!='담당팀장'}">
					<option>담당팀장</option>
					</c:if>
					<c:if test="${admin.j_level=='직원'}">
					<option selected="selected">직원</option>
					</c:if>
					<c:if test="${admin.j_level!='직원'}">
					<option>직원</option>
					</c:if>
				</select>
				<input type="submit" value="직급변경">
			</form>
			<td><form action="/adminLibrary/adminInfo/adminDelete" method="post">
				<input type="hidden" name="id" value="${admin.id}">
				<input type="submit" value="관리자삭제">
			</form>
		</tr>
	</table>
</body>
</html>