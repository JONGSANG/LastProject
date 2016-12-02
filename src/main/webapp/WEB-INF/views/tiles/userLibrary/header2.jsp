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
				<span class="date">월요일 10월 9일 2016년 17시 51분</span>
				</div>
			</div>
  	<div>
        <div class="nav">
            <nav id="topmenu">  
                <ul >
                     <li id="menu" class="current li-none listyle"><a href="#">도서관소개</a>
                     <ul class="sub">
                     <li><a class="submenu start" href="/userLibrary/libInfo/intro">인사말</a></li>
                     	<li><a class="submenu" href="/userLibrary/libInfo/org">조직도</a></li>
                     	<li><a class="submenu" href="/userLibrary/libInfo/map">찾아오는 길</a></li>
                     	<li><a class="submenu" href="/userLibrary/libInfo/s_status">시설현황</a></li>
                     	<li><a class="submenu end" href="/userLibrary/libInfo/b_status">자료현황</a></li>
                     </ul>
                     </li>
                    <li id="menu" class="listyle"><a href="#">&nbsp;이용안내&nbsp;</a>
                    <ul class="sub">
                    	<li><a class="submenu start" href="/userLibrary/using/time">이용시간</a></li>
                    	<li><a class="submenu" href="/userLibrary/using/s_room">열람실</a></li>
                    	<li><a class="submenu" href="/userLibrary/using/b_rent">책대출안내</a></li>
                    	<li><a class="submenu" href="/userLibrary/using/m_info">회원안내</a></li>
                    	<li><a class="submenu end" href="/userLibrary/using/p_info">주차장안내</a></li>
                    </ul>
                    </li>
                    <li id="menu" class="listyle"><a href="#">&nbsp;&nbsp;&nbsp;검색&nbsp;&nbsp;&nbsp;</a>
                    <ul class="sub">
                    	<li><a class="submenu" href="/userLibrary/search/b_search/index">도서검색</a></li>
                    	<li><a class="submenu" href="/userLibrary/search/n_search/index">신착도서</a></li>
                    	<li><a class="submenu" href="/userLibrary/search/p_search/index">간행물 검색</a></li>
                    	<li><a class="submenu end" href="/userLibrary/search/b_request/listAll">희망도서신청</a></li>
                    </ul>
                    </li>
                    <li id="menu" class="li-left li-none listyle"><a href="#">도서관소식</a>
                    <ul class="sub">
                    	<li><a class="submenu" href="/userLibrary/libNews/notice/listAll">공지사항</a></li>
                    	<li><a class="submenu" href="/userLibrary/libNews/schedule">도서관 일정</a></li>
                    	<li><a class="submenu" href="/userLibrary/libNews/recommand/recommand">추천도서</a></li>
                    	<li><a class="submenu" href="/userLibrary/libNews/best/listBest">대출도서 베스트</a></li>
                    	<li><a class="submenu end" href="/userLibrary/libNews/f_board/listAll">자유게시판</a></li>
                    </ul>
                    </li>
                    <li id="menu" class="listyle"><a href="#">&nbsp;&nbsp;서비스&nbsp;&nbsp;</a>
                    <ul class="sub">
                    	<li><a class="submenu" href="/userLibrary/service/after/list">방과후 학교</a></li>
                    	<li><a class="submenu" href="/userLibrary/service/culture/list">문화 행사</a></li>
                    	<li><a class="submenu" href="/userLibrary/service/food">구내 식단표</a></li>
                    	<li><a class="submenu" href="/userLibrary/service/delivery">도서배달서비스</a></li>
                    	<li><a class="submenu" href="/userLibrary/service/openboard/list">공개자료실</a></li>
                    	<li><a class="submenu end" href="/userLibrary/service/min_board/listAll">민원게시판</a></li>
                    </ul>
                    </li>
                    <li id="menu" class="listyle"><a href="#">&nbsp;&nbsp;내정보&nbsp;&nbsp;</a>
                    <ul class="sub">
                    	<li><a class="submenu" href="/userLibrary/myInfo/modifyCheck">개인정보 수정</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/d_status">대출현황</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/r_status">예약현황</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/d_history">대출내역</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/m_history">민원내역</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/leave">회원탈퇴</a></li>
                    	<li><a class="submenu" href="/userLibrary/myInfo/r_history">도서신청내역</a></li>
                    	<li><a class="submenu end" href="/userLibrary/myInfo/s_history">행사신청내역</a></li>
                    </ul>
                    </li>
                </ul>
            </nav>
      </div>
        <header>
            <h1><a href="/"><img src="/resources/images/HomeIcon2.png" alt="HomeIcon" width="100px"></a></h1>
        </header>
       
    </div>
  </div>    