<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
	<title>Kosta Library</title>
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/reset.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/slider.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/templates.css">
		<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/mainhome.css">
		<script src="/resources/js/jquery-1.8.3.min.js"></script> 
		<script src="/resources/js/jquery.jcarousel.min.js"></script> 
		<script src="/resources/js/jquery.ulslide.js"></script> 
		<script src="/resources/js/jquery.bxslider.min.js"></script> 
		<script src="/resources/js/tms-0.4.1.js"></script>
		<script src="/resources/js/header.js"></script>
		<script src="/resources/js/userLibrary.js"></script>
		

</head>
<body>
		<div>
      <tiles:insertAttribute name="header" />
      </div>
   		<div >
      <tiles:insertAttribute name="body" />
      </div>
 <div style="border-top: 5px solid #E4E4E4">
	<br>
	<tiles:insertAttribute name="footer" />
	<br>
</div>
<!-- 심플배너 관련 -->
<script>
$(document).ready(function(){
	var slider = $('.bxslider').bxSlider({
			auto: true, mode:'fade',
		});
	var slider_01 =	$('.bxslider_01').bxSlider({
			auto: true,autoControls: true, mode:'vertical',
		});
	var slider_02 =	$('.bxslider_02').bxSlider({
			auto: true,controls:false,pagerCustom: '#bx-pager1'
		});
		// 클릭시 멈춤 현상 해결 //
		$(document).on('click','.bx-next, .bx-prev,  #bx-pager1',function() {
		slider.stopAuto();
		slider.startAuto();
		slider_01.stopAuto();
		slider_01.startAuto();
		slider_02.stopAuto();
		slider_02.startAuto();
	});	
});
</script>

<!-- 로그인 관련 -->
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
			"10월", "11월", "12월" ], arrWeeks = [ "일", "월", "화", "수", "목", "금",
			"토" ], totalDays = [ "31", "0", "31", "30", "31", "30", "31", "31",
			"30", "31", "30", "31" ];

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

			if (y < 7) {
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