<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>대출 내역</title>
<script type="text/javascript">
	var modify = '${modify}';

	if (modify == 'modify') {
		alert("회원정보 수정 완료")
	}
</script>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">대출 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>대출 내역</b>
		</div>
	</section>
	<div id="insidebody">
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
			<td>휴대전화번호
			<td>${MemberVO.phone}
		</tr>
		<tr>
			<td>직업
			<td>${MemberVO.job}
		</tr>
		<tr>
			<td>회원등급 <c:if test="${MemberVO.role=='ROLE_SEMIUSER'}">
					<td>준회원
				</c:if> <c:if test="${MemberVO.role=='ROLE_USER'}">
					<td>정회원
				</c:if>
		</tr>
	</table>
	<br>
	<input type="button" value="회원정보수정"
		onclick="document.location.href='/userLibrary/myInfo/modifyCheck'">
	<input type="button" value="회원탈퇴"
		onclick="document.location.href='/userLibrary/myInfo/leave'">
		</div>
</body>
</html>