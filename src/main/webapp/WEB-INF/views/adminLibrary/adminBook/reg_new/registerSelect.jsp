<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script language="JavaScript">
	function doChange(srcE, targetId) {
		var val = srcE.options[srcE.selectedIndex].value;
		var targetE = document.getElementById(targetId);

		removeAll(targetE);

		if (val == '01') {
			alert("[ 문학 ]을 선택하셨습니다.\n");
			addOption('시집', targetE);
			addOption('산문집', targetE);
			addOption('소설', targetE);
		} else if (val == '03') {
			alert("[ 컴퓨터 ]를 선택하셨습니다.\n");
			addOption('프로그래밍', targetE);
		} else if (val == '04') {
			alert("[ 사회/정치 ]를 선택하셨습니다.\n");
			addOption('정치/외교', targetE);
			addOption('생태/환경', targetE);
		} else if (val == '05') {
			alert("[ 예술 ]을 선택하셨습니다.\n");
			addOption('건축', targetE);
		} else if (val == '07') {
			alert("[ 어린이 ]을 선택하셨습니다.\n");
			addOption('인물', targetE);
		} else if (val == '99') {
			alert("[ 연속간행물 ]을 선택하셨습니다.\n");
			addOption('베스트일레븐', targetE);
			addOption('GAMERZ', targetE);
			addOption('PC사랑', targetE);
			addOption('GQ코리아', targetE);
			addOption('매거진B', targetE);
			addOption('위즈키즈', targetE);
			addOption('과학소년', targetE);
			addOption('더스타', targetE);
			addOption('마리끌레르', targetE);
			addOption('아망', targetE);
			addOption('좋은생각', targetE);
			addOption('탑기어', targetE);
			addOption('행복이가득한집', targetE);
		}
	}

	function addOption(value, e) {
		var o = new Option(value);
		try {
			e.add(o);
		} catch (ee) {
			e.add(o, null);
		}
	}

	function removeAll(e) {
		for (var i = 0, limit = e.options.length; i < limit - 1; ++i) {
			e.remove(1);
		}
	}

	function onlyNumber(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
				|| keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
			return false;
	}

	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
</script>
</head>
<body>
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 class="box-title">신규 도서 등록</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">
			<h5>* 대 분류를 먼저 선택하여 주십시오</h5>
			<h5>* 소 분류를 선택한 후 검색버튼을 눌러 주십시오</h5>

			<form action="index" method="post">
				<table width="600" border="1"
					class="table table-bordered table-hober dataTable">
					<tr>
						<th width="500">대 분류 : <select name="searchType"
							id="searchType" onchange="doChange(this, 'value')">
								<option>---------------</option>
								<option value="01">문학</option>
								<option value="03">컴퓨터</option>
								<option value="04">사회/정치</option>
								<option value="05">예술</option>
								<option value="07">어린이</option>
								<option value="99">연속간행물</option>
						</select> 소 분류 : <select name=value id="value">
								<option>---------------</option>
						</select>
						<button type="submit" class="btn btn-info pull-right">등록 도서 구분 검색</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<!-- /.box-body -->
		<div class="box-footer">
			<table width="600" border="1"
				class="table table-bordered table-hober dataTable">
				<tr>
					<th width="50">책 번호</th>
					<th width="350">책 제목</th>
					<th width="100">저자명</th>
					<th width="100">출판사</th>
					<th width="100">출판 년도</th>
					<th width="100">구입 날짜</th>
				</tr>
				<tr>
					<td width="50">${lastBook.bNo }</td>
					<td width="350"><a href="readInfo?bNo=${lastBook.bNo}">${lastBook.bTitle}</a></td>
					<td width="100">${lastBook.bWriter}</td>
					<td width="100">${lastBook.bCompany}</td>
					<td width="100">${lastBook.bYear}</td>
					<td width="100"><fmt:formatDate value="${lastBook.buy_date}"
							pattern="yyyy.MM.dd" /></td>
				</tr>

			</table>
		<!-- /.box-footer -->
		<form action="register" method="post">
			<input type="hidden" value="${searchType}" name="searchType">
			<input type="hidden" value="${value}" name="value">

			<table class="table table-bordered table-hober dataTable">
				<tr>
					<c:if test="${searchType!='99'}">
						<th>도서 등록<button type="submit" class="btn btn-info pull-right">책 번호 생성후 등록으로 이동</button></th>
					</c:if>
					<c:if test="${searchType=='99'}">
						<th>연속간행물<button type="submit" class="btn btn-info pull-right">책 번호 생성후 등록으로 이동</button></th>

					</c:if>
					
				</tr>
				<tr>
					<c:if test="${searchType!='99'}">
						<td ><input type="radio" value="A" name="select"
							checked="checked"> 다른 종류의 책을 신규로 등록<br> <input
							type="radio" value="B" name="select"> 같은 종류의 책을 추가로 등록</td>
					</c:if>
					<c:if test="${searchType=='99'}">
						<td><input type="hidden" value="C" name="select">
							<h5>* 위의 선택하신 간행물의 종류가 등록하실 간행물이 맞는지 확인하여 주세요.</h5>
							<h5>* 등록하실 간행물의 정보를 입력하여 주세요</h5> 출간 년도 [ ex) 16 년도 ] :<input
							type="text" onkeydown='return onlyNumber(event)'
							onkeyup='removeChar(event)' style='ime-mode: disabled;'
							maxlength="2" name="gan_Y"> 년도<br> 출간 월 [ ex) 09 월호
							]:<input type="text" onkeydown='return onlyNumber(event)'
							onkeyup='removeChar(event)' style='ime-mode: disabled;'
							maxlength="2" name="gan_M"> 월호</td>
					</c:if>
				</tr>
			</table>
		</form>
		</div>

	</div>
	<!-- /.box -->
	</table>

</body>
</html>