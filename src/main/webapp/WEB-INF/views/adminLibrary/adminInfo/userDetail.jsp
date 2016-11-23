<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th colspan="9">회원정보
		</tr>
		<tr>
			<th>아이디
			<th>이름
			<th>생년월일
			<th>이메일
			<th>휴대전화번호
			<th>주소
			<th colspan="2">회원등급
			<th>강제탈퇴
		</tr>
		<tr>
			<td>${user.id}
			<td>${user.name}
			<td>${user.birth}
			<td>${user.email}
			<td>${user.phone}
			<td>${user.address}
			<form action="/adminLibrary/adminInfo/roleChange" method="post">
			<input type="hidden" name="id" value="${user.id}">
				<select name="role">
				<c:if test="${user.role=='ROLE_SEMIUSER'}">
					<option value="ROLE_SEMIUSER" selected="selected">준회원</option>
				</c:if>
				<c:if test="${user.role!='ROLE_SEMIUSER'}">
					<option value="ROLE_SEMIUSER">준회원</option>
				</c:if>
				<c:if test="${user.role=='ROLE_USER'}">
					<option value="ROLE_USER" selected="selected">정회원</option>
				</c:if>
				<c:if test="${user.role!='ROLE_USER'}">
					<option value="ROLE_USER">정회원</option>
				</c:if>
				</select>
			<input type="submit" value="회원등급변경">
			</form>
			<td><form action="/adminLibrary/adminInfo/userDelete" method="post">
				<input type="hidden" name="id" value="${user.id}">
				<input type="submit" value="강제회원탈퇴">
			</form>
		</tr>
	</table>
	<table>
		<tr>
			<th>책 제목
			<th>대출일
			<th>반납예정일
			<th>연체일수
			<th>상태
		</tr>
		<c:forEach items="${rent}" var="rent" >
		<tr>
			<td>${rent.btitle}
			<td>${rent.rent_date}
			<td>${rent.submit_date}
			<td><c:out value="${rent.late}" ></c:out>
			<c:if test="${rent.check_submit==false}">
				<c:if test="${rent.check_late==true}">
				<td>연체중
				</c:if>
				<td>대출중
			</c:if>
		</tr> 
		</c:forEach>
	</table>
</body>
</html>