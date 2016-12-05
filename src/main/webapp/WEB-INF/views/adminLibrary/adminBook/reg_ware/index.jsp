<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script language="JavaScript">

var msg = '${msg}';
if (msg == 'success') {
	alert("폐기등록이 완료되었습니다.");
	location.href=document.referrer;
}

function Activity(name, list){
    this.name = name;
    this.list = list;
}

var acts = new Array();
	acts[0] = new Activity('01', ['전체','시집', '산문집', '소설']);
	acts[1] = new Activity('03', ['전체','프로그래밍']);
	acts[2] = new Activity('04', ['전체','정치/외교', '생태/환경']);
	acts[3] = new Activity('05', ['전체','건축']);
	acts[4] = new Activity('07', ['전체','인물']);
	acts[5] = new Activity('99', ['전체','과학소년','더스타','매거진B','마리끌레르','베스트일레븐','위즈키즈','아망','좋은생각','탑기어','행복이가득한집','GQ코리아','GAMERZ','PC사랑']);

function updateList(str){
    var frm = document.myForm;
    var oriLen = frm.value.length;
    var numActs;

    for (var i = 0; i < acts.length; i++){
        if (str == acts[i].name) {
            numActs = acts[i].list.length;
            for (var j = 0; j < numActs; j++)
                frm.value.options[j] = new Option(acts[i].list[j],
				acts[i].list[j]);
            for (var j = numActs; j < oriLen; j++)
				frm.value.options[numActs] = null;
        }
    }
}

</script>
</head>
<body>
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 class="box-title">서고(폐기) 도서 등록</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">
			<h5>* 대 분류를 먼저 선택하여 주십시오</h5>
			<h5>* 소 분류를 선택한 후 검색버튼을 눌러 주십시오</h5>

<form method="get" name=myForm>
	<table width="600" border="1" class="table table-bordered table-hober dataTable">
		<tr>
			<th width="100">
				<input type="radio" name="searchType" value=01  onClick="updateList(this.value)"> 문학
			<br><input type="radio" name="searchType" value=03  onClick="updateList(this.value)"> 컴퓨터
			<br><input type="radio" name="searchType" value=04  onClick="updateList(this.value)"> 정치/사회
			</th>
			<th width="100">
				<input type="radio" name="searchType" value=05  onClick="updateList(this.value)"> 예술
			<br><input type="radio" name="searchType" value=07  onClick="updateList(this.value)"> 어린이
			<br><input type="radio" name="searchType" value=99  onClick="updateList(this.value)"> 연속간행물
			</th>
			<th width="100">
				<select name=value>
					<option>---------</option>
				</select>
				<input type="text" name="keyword">
				<button type="submit" class="btn btn-info pull-right">도서 검색</button>
			</th>
		</tr>
	</table>	
</form>
<table width="600" border="1" class="table table-bordered table-hober dataTable">
 	<tr>
		<th width="50">책 번호</th>
		<th width="350">책 제목</th>
		<th width="100">저자명</th>
		<th width="100">출판사</th>
		<th width="100">구입 날짜</th>
		<th width="100">폐기 등록</th>
	</tr>
	<c:forEach items="${list}" var="bookVO" >
		<tr>
			<td width="50">${bookVO.bNo }</td>
			<td width="350"><a href="readInfo?bNo=${bookVO.bNo}">${bookVO.bTitle}</a></td>
			<td width="100">${bookVO.bWriter}</td>
			<td width="100">${bookVO.bCompany}</td>
			<td width="100"><fmt:formatDate value="${bookVO.buy_date}" pattern="yyyy.MM.dd"/></td>
			<td width="100">
				<button onclick="if(confirm('[ ${bookVO.bTitle} ] \n\n위 도서를 정말로 폐기 하시겠습니까?')==true) location='reg_ware?bNo=${bookVO.bNo}';">폐기</button>
			</td>
		</tr>
	</c:forEach>
</table>
    <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="index${pageMaker.makeBookList(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="index${pageMaker.makeBookList(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="index${pageMaker.makeBookList(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
</div>
</div>



</body>
</html>