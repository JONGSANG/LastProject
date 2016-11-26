<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 왼쪽 256 , 센터 512 , 오른쪽 256 -->
<div id="userLibrary">

	<!-- 좌측 공간 시작!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="mainleft">

		<!-- 슬라이드 시작 -->
		<div id="wrap">
			<img src="/resources/images/popup.png" / width="120">
			<div id="main_bn">
				<li class="li-img"><a href="/"><img
						src="/resources/images/banner1.png" alt="" /></a></li>
				<li class="li-img"><a href="/"><img
						src="/resources/images/banner2.png" alt="" /></a></li>
				<li class="li-img"><a href="/"><img
						src="/resources/images/banner3.png" alt="" /></a></li>
				<div id="main_bn_btn">
					<li><a href="#"><img src="/resources/images/blt.png"></a></li>
					<li><a href="#"><img src="/resources/images/blt.png"></a></li>
					<li><a href="#"><img src="/resources/images/blt.png"></a></li>
				</div>
			</div>
		</div>
		<!-- 슬라이드 end -->

		<!-- 바로가기 서비스 -->
		<div id="gobtn">
			<img src="/resources/images/everymenu.PNG" / width="120"><br>
			<a href="#"><img alt="" src="/resources/images/btnstudy.PNG"
				width="80px"></a> <a href="/userLibrary/service/after/list"><img
				alt="" src="/resources/images/btnafter.PNG" width="80px"></a> <a
				href="/userLibrary/service/culture/list"><img alt=""
				src="/resources/images/btnculture.PNG" width="80px"></a><br>
			<a href="/userLibrary/using/time"><img alt=""
				src="/resources/images/btntime.PNG" width="80px"></a> <a
				href="/userLibrary/libInfo/map"><img alt=""
				src="/resources/images/btnway.PNG" width="80px"></a> <a
				href="/userLibrary/service/min_board/listAll"><img alt=""
				src="/resources/images/btnmin.PNG" width="80px"></a>
		</div>
	</div>
	<!-- 좌측 div 공간 end -->


	<!-- 가운데 공간 시작!!!!!!!!!!!!!!!!!!!!  -->
	<div id="maincenter">
		<div class="mainsearch">
			<img src="/resources/images/searchIcon.png" width="100">
			<form class="searchform cf"
				action="/userLibrary/search/b_search/result">
				<select id="select_box" name="searchType">
					<option value="bTitle">제목명</option>
					<option value="bWriter">저자명</option>
					<option value="bCompany">출판사</option>
				</select> <input type="text" name='keyword' id="keywordInput">
				<button id="searchBtn">검색</button>
			</form>
		</div>
		<!-- 검색 end -->

		<div id="container">
			<div style="position: absolute">
				<ul class="tabs">
					<li class="active" rel="tab1">공지사항</li>
					<li rel="tab2">자유게시판</li>
					<li rel="tab3">민원게시판</li>
				</ul>
			</div>
			<div class="tab_container">
				<!-- 공지사항 내용이 들어가는 공간 -->
				<div id="tab1" class="tab_content">
					<a class="more" href="/userLibrary/libNews/notice/listAll"><font color="white">더보기</font></a><br>
					<br>
					<table>
						<c:forEach items="${notice}" var="list" varStatus="var" end="4">
							<tr>
								<td valign="middle" id="#title" width="350px"><img src="/resources/images/fronticon.png" width="10px" style="padding-top: 5px"> 
								<a href='/userLibrary/libNews/notice/read?num=${list.num}'>${list.title}</a>
								</td>
								<td valign="middle" id="#title2" align="left" width="50px" height="22px">${list.id}</td>
								<td valign="middle" id="#title3" align="right" width="90px" style="float: right;" height="22px">
								<fmt:formatDate value="${list.write_date}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--1 탭끝 -->

				<!-- 자유게시판 내용이 들어가는 공간 -->
				<div id="tab2" class="tab_content">
					<a class="more" href="/userLibrary/libNews/f_board/listAll"><font color="white">더보기</font></a><br>
					<br>
					<table>
						<c:forEach items="${f_board}" var="list" varStatus="var" end="4">
							<tr>
								<td valign="middle" id="#title" width="350px">
								<img src="/resources/images/fronticon.png" width="10px" style="padding-top: 5px"> 
								<a href='/userLibrary/libNews/f_board/read?num=${list.num}'>${list.title}</a>
								</td>
								<td valign="middle" id="#title2" align="left" width="50px" height="22px">${list.id}</td>
								<td valign="middle" id="#title3" align="right" width="90px" style="float: right;" height="22px">
									<fmt:formatDate value="${list.write_date}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--2 탭끝 -->

				<!-- 민원게시판 내용이 들어가는 공간 -->
				<div id="tab3" class="tab_content">
					<a class="more" href="/userLibrary/service/min_board/listAll"><font color="white">더보기</font></a><br>
					<br>
					<table>
						<c:forEach items="${m_board}" var="list" varStatus="var" end="4">
							<tr>
								<td valign="middle" id="#title" width="350px">
								<img src="/resources/images/fronticon.png" width="10px" style="padding-top: 5px"> 
								<a href='/userLibrary/service/min_board/read?num=${list.num}'>${list.title}</a>
								</td>
								<td valign="middle" id="#title2" align="left" width="50px" height="22px">${list.id}</td>
								<td valign="middle" id="#title3" align="right" width="90px" style="float: right;" height="22px">
								<fmt:formatDate value="${list.min_date}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--3 탭끝 -->
			</div>
			<!-- .tab_container -->
		</div>
		<!-- #container -->

	</div>
	<!-- 가운데 div 공간 end -->
	<!-- 오른쪽 공간 시작!!!!!!!!!!!! -->
	<div id="mainright">
		<security:authorize access="isAnonymous()">
			<div class="loginForm">
				<c:url value="/j_spring_security_check" var="login"></c:url>
				<form action="${login}" method="post">
					<div class="box">
						<input type="text" name="j_username" class="iText"
							placeholder="아이디"> <br> <input type="password"
							name="j_password" class="iText" placeholder="비밀번호"> <br>
						<p>
							<span class="llogbottom"><a
								href="/userLibrary/member/join">회원가입</a></span> <span
								class="rlogbottom"> <a href="/userLibrary/popup/findID" onClick="window.open(this.href, 'findID', 'width=414, height=353, left=500, top=150'); return false;">
								아이디 찾기</a>&nbsp;|&nbsp; 
								<a href="/userLibrary/popup/findPassword" onClick="window.open(this.href, 'findPassword', 'width=414, height=378, left=500, top=150'); return false;">
								비밀번호 찾기</a>
							</span>
						</p>
					</div>
					<input type="submit" value="로그인" class="loginBtn">
				</form>
			</div>
			<!-- login form end -->
		</security:authorize>
		<security:authorize access="isAuthenticated()">
			<!-- 로그인 된 페이지 여기에 작성 -->
			<div class="logMember">
				<table>
					<tr>
						<td width="150px" valign="middle" align="center"><font
							color="blue">${vo.name}</font>님<br>로그인되었습니다.</td>
						<td valign="middle"><a href="/userLibrary/myInfo/r_status"><img
								alt="" src="/resources/images/logreser.png" width="100px"
								height="33px"></a><br> <a
							href="/userLibrary/myInfo/d_status"><img alt=""
								src="/resources/images/loglist.png" width="100px" height="30px"></a><br>
							<a href="/userLibrary/myInfo/modifyCheck"><img alt=""
								src="/resources/images/loginfo.png" width="100px" height="30px"></a>
						</td>
					</tr>
				</table>

			</div>
		</security:authorize>
		<!-- 로그인 관련 end -->

		<!-- 캘린더 -->
		<img src="/resources/images/libraryschadule.png" width="120"><br>
		<div style="display: inline-block; width: 250px; height: 230px;">

			<div id="calTitle">

				<button id="prevYear" type="button" title="이전 해">◀</button>

				<span id="calYear"></span><span>년</span>

				<button id="nextYear" type="button" title="다음 해">▶</button>

				<button id="prevMonth" type="button" title="이전 달">◁</button>

				<span id="calMonth"></span>

				<button id="nextMonth" type="button" title="다음 달">▷</button>

				<a href="userLibrary/libNews/schedule" id="themore">&nbsp;더보기&nbsp;</a>
			</div>

			<div id="myCalender"></div>
			<div
				style="position: relative; z-index: 2; font-size: 12px; width: 260px; padding-left: 5px">
				<img style="padding-top: 4px" src="/resources/images/dayd.png"
					width="10px">&nbsp;현재 날짜&nbsp;&nbsp; <img
					style="padding-top: 4px" src="/resources/images/dayholi.png"
					width="10px">&nbsp;도서관 휴관&nbsp;&nbsp; <img
					style="padding-top: 4px" src="/resources/images/dayevent.png"
					width="10px">&nbsp;도서관 행사&nbsp;&nbsp;

			</div>

		</div>
		<!-- 캘린더 end -->
		<!-- 작은 배너 시작  -->
		<div id="s_banner_wrap">
			<ul class="bxslider">
				<a href="http://www.kosta.or.kr/" target="_blank"><div
						style="width: 256px; height: 100px; background: url('/resources/images/logoKosta.png');"></div></a>
				<a href="http://www.snlib.go.kr/index.do" target="_blank"><div
						style="width: 256px; height: 100px; background: url('/resources/images/logoSeongnam.png');"></div></a>
				<a href="https://www.yonginlib.go.kr:5444/intro.asp" target="_blank"><div
						style="width: 256px; height: 100px; background: url('/resources/images/logoyongin.png');"></div></a>

			</ul>
		</div>
		<!-- 작은 배너 끝  -->


	</div>
	<!-- 우측 div 공간 end -->

</div>

