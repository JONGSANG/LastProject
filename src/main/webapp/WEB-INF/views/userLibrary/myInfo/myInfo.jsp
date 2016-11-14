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
			<td>아이디
			<td>${MemberVO.id}
		</tr>
		<tr>
			<td>이름
			<td>${MemberVO.name}
		</tr>
		<tr>
			<td>생년월일
			<td>${MemberVO.birth}
		</tr>
		<tr>
			<td>이메일
			<td>${MemberVO.email}
		</tr>
		<tr>
			<td>전화번호
			<td>${MemberVO.phone}
		</tr>
		<tr>
			<td>직업
			<td>${MemberVO.job}
		</tr>
		<tr>
			<td>회원등급
			<c:if test="${MemberVO.role=='ROLE_SEMIUSER'}">
			<td>준회원
			</c:if>
			<c:if test="${MemberVO.role=='ROLE_USER'}">
			<td>정회원
			</c:if>
		</tr>
	</table>
</body>
</html>