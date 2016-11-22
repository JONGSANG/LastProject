<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!--==============================header=================================-->
  <div class="header">
  <div class="wrapper">
				<nav class="topnav">
					<ul id="top_nav">
						<c:url value="/j_spring_security_logout" var="logout"></c:url>
						<security:authorize access="isAnonymous()">
						<li class="fi"><a href="/">홈으로</a></li>
						<li class="se"><a href="/userLibrary/member/login">로그인</a></li>
						<li class="th"><a href="/userLibrary/member/join">회원가입</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
						<li class="fii"><a href="/">홈으로</a></li>
						<li class="se"><a href="/userLibrary/myInfo/myInfo">마이페이지</a></li>
						<li class="th"><a href="${logout}">로그아웃</a></li>
						</security:authorize>
					</ul>
				</nav>
				<div class="dat">
				<span class="date">월요일 10월 9일 2016년 17시 51분 11</span>
				</div>
			</div>
  </div>   