<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<c:url value="/j_spring_security_check" var="login"></c:url>
	<form action="${login}" method="post">
		<input type="text" name="j_username" placeholder="최대 12자 영문/숫자" maxlength="12" required autofocus><br>
		<input type="text" name="j_password" placeholder="최대 12자 영문/숫자" maxlength="12" required><br>
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="document.location.href='userLibrary/member/join'">
	</form>
</body>
</html>