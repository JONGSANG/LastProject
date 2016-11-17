<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>

	<!-- 왼쪽 256 , 센터 512 , 오른쪽 256 -->
	<div id="userLibrary">

		<!-- 좌측 공간 시작!!!!!!!!!!!!!!!!!!!!!! -->
		<div id="mainleft">

			<!-- 슬라이드 시작 -->
			<div id="wrap">
				<img src="/resources/images/popup.png" / width="120">
				<div id="main_bn">
					<li class="li-img"><a href="/"><img
							src="/resources/images/image_1.jpg" alt="" /></a></li>
					<li class="li-img"><a href="/"><img
							src="/resources/images/image_2.jpg" alt="" /></a></li>
					<li class="li-img"><a href="/"><img
							src="/resources/images/image_3.jpg" alt="" /></a></li>
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
					width="80px"></a> <a href="/userLibrary/service/after"><img
					alt="" src="/resources/images/btnafter.PNG" width="80px"></a> <a
					href="/userLibrary/service/culture"><img alt=""
					src="/resources/images/btnculture.PNG" width="80px"></a><br>
				<a href="/userLibrary/using/time"><img alt=""
					src="/resources/images/btntime.PNG" width="80px"></a> <a
					href="/userLibrary/libInfo/map"><img alt=""
					src="/resources/images/btnway.PNG" width="80px"></a> <a
					href="/userLibrary/service/min_board"><img alt=""
					src="/resources/images/btnmin.PNG" width="80px"></a>
			</div>
		</div>
		<!-- 좌측 div 공간 end -->


		<!-- 가운데 공간 시작!!!!!!!!!!!!!!!!!!!!  -->
		<div id="maincenter">
			<div class="mainsearch">
				<img src="/resources/images/searchIcon.png" width="100">
				<form class="searchform cf">
					<input type="text" name="" value="" onkeypress="" />
					<button onclick="">검색</button>
				</form>
			</div>
			<!-- 검색 end -->

			<div id="container">
				<ul class="tabs">
					<li class="active" rel="tab1">공지사항</li>
					<li rel="tab2">구매랭킹</li>
					<li rel="tab3">추후 결정될 메뉴</li>
				</ul>
				<div class="tab_container">
					<div id="tab1" class="tab_content">공지사항이 들어갈 공간입니다.</div>
					<!-- #tab1 -->
					<div id="tab2" class="tab_content">자유게시판이 들어갈 공간이지 말입니다.</div>
					<!-- #tab2 -->
					<div id="tab3" class="tab_content">추후들어갈 내용이 뭐가 올지 모릅니다. ㅋㅋㅋㅋ</div>
					<!-- #tab3 -->
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
									class="rlogbottom"> <a href="/userLibrary/member/findID">아이디
										찾기</a>&nbsp;|&nbsp; <a href="/userLibrary/member/findPassword">비밀번호
										찾기</a>
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
								<a href="/userLibrary/myInfo/modify"><img alt=""
									src="/resources/images/loginfo.png" width="100px" height="30px"></a>
							</td>
						</tr>
					</table>

				</div>
			</security:authorize>
			<!-- 로그인 관련 end -->

			<!-- 캘린더 -->
			<img src="/resources/images/libraryschadule.png" / width="120"><br>
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

			</div>
			<!-- 캘린더 end -->


		</div>
		<!-- 우측 div 공간 end -->

	</div>
	<script type="text/javascript">
		var logout = '${logout}';
		var leave = '${leave}';
		var join = '${join}';

		if (logout == 'logout') {
			alert("로그아웃 완료");
		}

		if (leave == 'leave') {
			alert("회원탈퇴 완료")
		}

		if (join == 'join') {
			alert("회원가입 완료")
		}
	</script>

	<script type="text/javascript">
		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */
		/*                                                    변수 및 배열 설정하기 & 오늘 날짜값 가져오기                                  */
		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */

		var myCalender = document.getElementById("myCalender"), spnCalYear = document
				.getElementById("calYear"), spnCalMonth = document
				.getElementById("calMonth"), btnPrevYear = document
				.getElementById("prevYear"), btnNextYear = document
				.getElementById("nextYear"), btnPrevMonth = document
				.getElementById("prevMonth"), btnNextMonth = document
				.getElementById("nextMonth");

		var arrMonths = [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월",
				"10월", "11월", "12월" ], arrWeeks = [ "일", "월", "화", "수", "목",
				"금", "토" ], totalDays = [ "31", "0", "31", "30", "31", "30",
				"31", "31", "30", "31", "30", "31" ];

		var d = new Date(), year = d.getFullYear(), month = d.getMonth(), day = d
				.getDate(), week = d.getDay(), txt = "";

		/* ─────────────────────────────────────── */
		/*                방문자가 사용중인, 브라우저의 정보를 가져와서,                                     */
		/*                ie 7 이하 버전일 경우에만, if문 실행하기                                                */
		/* ─────────────────────────────────────── */
		if (navigator.userAgent.indexOf("Trident") < 0
				&& navigator.userAgent.indexOf("MSIE") > 0) {
			txt = "&nbsp;";
			btnPrevMonth.style.marginLeft = "3px";
		}

		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */
		/*                                                              달력 만들기 함수 makeCalender                                           */
		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */

		function makeCalender() {

			/* ─────────────────────────────────────── */
			/*                버튼 클릭시, "month 값"이 바뀌면, 버튼 기능 켜기                                   */
			/* ─────────────────────────────────────── */
			if (month > 0 && month < 11) {
				btnPrevMonth.disabled = false;
				btnNextMonth.disabled = false;
			}

			/* ─────────────────────────────────────── */
			/*                "span 태그"에 들어갈, 텍스트 설정하기                                                 */
			/* ─────────────────────────────────────── */
			spnCalYear.innerHTML = year;
			spnCalMonth.innerHTML = arrMonths[month];

			/* ─────────────────────────────────────── */
			/*                2월에 대한, 윤년 설정하기                                                                    */
			/* ─────────────────────────────────────── */
			if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
				totalDays[1] = 29;
			else
				totalDays[1] = 28;

			/* ─────────────────────────────────────── */
			/*                당월 첫째날(1일)에 대한, 요일값 구하기                                                 */
			/* ─────────────────────────────────────── */
			var firstDate = new Date(year, month, 1), firstWeek = firstDate
					.getDay();

			/* ─────────────────────────────────────── */
			/*                당월 마지막 날의 날짜를 배열 "totalDays"에서 가져오기                         */
			/* ─────────────────────────────────────── */
			var lastDay = totalDays[month];

			/* ─────────────────────────────────────── */
			/*                새로운 "table"을 만들어서, "calTable"이라는 id를 붙여준 다음,                  */
			/*                문서의 "myCalender"에 삽입하기                                                          */
			/* ─────────────────────────────────────── */
			var newTable = document.createElement("TABLE");
			newTable.setAttribute("id", "calTable");

			myCalender.appendChild(newTable);

			/* ─────────────────────────────────────── */
			/*                넨장할... ie 7 버전 이하에서는 "tbody" 태그가 반드시 있어야 함!!                */
			/* ─────────────────────────────────────── */
			var newTbody = document.createElement("TBODY");
			newTbody.setAttribute("id", "calTbody");

			var calTable = document.getElementById("calTable");
			calTable.appendChild(newTbody);

			/* ─────────────────────────────────────── */
			/*                달력에 필요한 "tr"을, 7개 만들어서                                                        */
			/*                "calTbody"에 삽입하기                                                                        */
			/* ─────────────────────────────────────── */
			var calTbody = document.getElementById("calTbody");

			for (var x = 1; x < 8; x++) {
				newTr = document.createElement("TR");
				calTbody.appendChild(newTr);
			}

			/* ─────────────────────────────────────── */
			/*                달력에 필요한 "td"를, 49개 만들어서                                                      */
			/*                각각의 "tr"에 삽입하기                                                                        */
			/* ─────────────────────────────────────── */

			var calTr = calTable.getElementsByTagName("tr")[0];

			for (var y = 0; y < 49; y++) {
				var newTd = document.createElement("TD");
				newTd.innerHTML = txt;

				calTr = calTr.childNodes.length > 6 ? calTr.nextSibling : calTr; // "tr" 바꾸기 
				calTr.appendChild(newTd);

				/* ──────────────────────────────── */
				/*        배열 "arrWeeks"에 있는, 각각의 값을, 첫번째 "tr"에 삽입하기        */
				/* ──────────────────────────────── */
				
				if (y < 7){
					newTd.innerHTML = arrWeeks[y];
					newTd.style.backgroundColor = "#B2CCFF";
				}
					

				/* ──────────────────────────────── */
				/*        일요일을 빨간색으로 표시하기                                                 */
				/* ──────────────────────────────── */
				if (newTd == calTr.firstChild)
					newTd.style.color = "#f40000";
			}

			/* ─────────────────────────────────────── */
			/*                숫자 넣기                                                                                          */
			/* ─────────────────────────────────────── */

			var calTd = calTable.getElementsByTagName("td");

			var firstPlace = 6 + firstWeek; // 숫자가 들어가게 될, 첫번째 위치 설정하기 

			for (var z = 1; z < calTd.length; z++) {
				var numCells = calTd[firstPlace + z];

				if (z <= lastDay)
					numCells.innerHTML = z; // 각 달의 마지막 날짜까지만 숫자 집어넣기 

				/* ──────────────────────────────── */
				/*        빈칸일 경우, 공백 글자를 하나 넣어주기                                    */
				/* ──────────────────────────────── */
				if (calTd[z].hasChildNodes() == false)
					calTd[z].innerHTML = txt;

				/* ──────────────────────────────── */
				/*        오늘 날짜가 들어간 칸을 표시해주기 (배경색을 넣음).                 */
				/* ──────────────────────────────── */
				var today = day > lastDay ? 1 : day;

				if (calTd[z].innerHTML == today)
					calTd[z].style.backgroundColor = "#bad2ea";

				/* ──────────────────────────────── */
				/*        아래쪽, 비어있는 "TD"의 테두리 없애기                                         */
				/*        숫자가 아닌, 공백 글자가 들어있는 칸을 감추는 효과.                         */
				/* ──────────────────────────────── */
				var calRows = calTd[z].parentNode;

				if (calRows != calTable.rows[1])
					if (calRows.cells[0].innerHTML == txt)
						calRows.className = "blankLine";
			}

		}
		makeCalender();

		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */
		/*                                      각각의 버튼 클릭시, 현재 달력을 삭제할 함수                                                  */
		/*                                      "parent"가 "childNode"를 가지고 있는 동안,                                                   */
		/*                                      "firstChild"를 잇따라 삭제해서, "childNode"를 모두 지우기                                */
		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */

		function deleteChildren(parent) {
			while (parent.hasChildNodes())
				parent.removeChild(parent.firstChild);
		}

		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */
		/*                                                                각각의 버튼에서, 실행될 함수                                             */
		/* ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ */

		btnPrevYear.onclick = function() {
			prevYear()
		};
		btnNextYear.onclick = function() {
			nextYear()
		};
		btnPrevMonth.onclick = function() {
			prevMonth()
		};
		btnNextMonth.onclick = function() {
			nextMonth()
		};

		function prevYear() {
			myCalender = myCalender;
			year -= 1;

			// "deleteChildren" 함수를 실행한 후, "makeCalender" 함수 다시 실행하기 
			deleteChildren(myCalender);
			makeCalender();
		}

		function nextYear() {
			myCalender = myCalender;
			year += 1;

			deleteChildren(myCalender);
			makeCalender();
		}

		function prevMonth() {
			myCalender = myCalender;
			month -= 1;

			// "month"의 값이 음수일 경우, 버튼 기능을 차단하기 
			if (month < 0) {
				btnPrevMonth.disabled = true;
				month += 1;
				return month;
			}

			deleteChildren(myCalender);
			makeCalender();
		}

		function nextMonth() {
			myCalender = myCalender;
			month += 1;

			// "month"의 값이 11을 넘어갈 경우, 버튼 기능을 차단하기 
			if (month > 11) {
				btnNextMonth.disabled = true;
				month -= 1;
				return month;
			}

			deleteChildren(myCalender);
			makeCalender();
		}
	</script>
</body>
</html>