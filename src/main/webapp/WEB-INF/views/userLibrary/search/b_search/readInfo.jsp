<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>도서검색</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">도서검색</font>
		</div>
		<div id="link">
			<div id="link24">
				<a href="/">home ></a><a href="#">검색 >&nbsp;</a>
			</div>
			<b>도서검색</b>
		</div>
	</section>
	<div id="insidebody">
	<div style="border-bottom: #d3d3d3 1px solid; padding-bottom: 20px; width: 770px">
	<form class="searchform cf" action="result" method="get">
				<select id="select_box" name="searchType">
					<option value="bTitle">제목명</option>
					<option value="bWriter">저자명</option>
					<option value="bCompany">출판사</option>
				</select> <input style="width: 590px; " type="text" name='keyword' id="keywordInput" value='${vo.keyword }'>
				<button id="searchBtn">검색</button>
			</form>
	</div>

	<table class="viewtable" style="width: 750px">
	<tr>
		<th>사진</th>
		<th colspan="2">도서 정보</th>
		
	</tr>
		<tr>
			<th width="150" rowspan="6"><img
				src="/resources/book_img/${read.bNo}.jpg" width="150"></th>
			<td id="vtd1">번호</td>
			<td id="vtd2">${read.bNo }</td>
		</tr>
		<tr>
			<td id="vtd1">제목 명</td>
			<td id="vtd2">${read.bTitle }</td>
		</tr>
		<tr>
			<td id="vtd1">저자 명</td>
			<td id="vtd2">${read.bWriter}</td>
		</tr>
		<tr>
			<td id="vtd1">출판사 명</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">${read.bCompany}</td>
		</tr>
		<tr>
			<td id="vtd1">출간년도</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">${read.bYear} 년</td>
			</tr>
			<tr>
			<td id="vtd1">구입 일자</td>
			<%-- <td width="50">${bookVO.bNo }</td> --%>
			<td id="vtd2">
				<fmt:formatDate value="${read.buy_date}" pattern="yyyy.MM.dd"/>
			</td>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<td colspan="3" height="300" align="left">
			<textarea id="regiwrite" style="padding: 10px 0 0 10px" name="content" rows="10" cols="104" readonly="readonly;" disabled="disabled">${read.bIntro}</textarea>
			</td>
		</tr>
		<tr>		
			<th colspan="3">대출 현황</th>
		</tr>
		<tr>
			<td id="vtd1">대출 여부</td>
		<c:if test="${read.bRent==1}">			
			<td id="vtd2">
				대출 가능
			</td>
			<td id="vtd1">대출 기간은 15일 이며 연체시, 추가 대출이 불가합니다.
			</td>
		</c:if>
		<c:if test="${read.bRent==-1}">
		<c:if test="${read.reserve_date!=null}">			
			<td id="vtd2">
				대출 중(예약불가)
			</td>
			<td id="vtd1">대출 기간은 15일 이며 연체시, 추가 대출이 불가합니다.
			</td>
		<tr>			
			<td id="vtd1">반납 예정일</td>
			<td id="vtd2" colspan="2">[ 대출 예약 중 ] 입니다.</td>
		</tr>
		</c:if>
		<c:if test="${read.reserve_date==null}">			
			<td id="vtd2">
				대출 중(예약가능)
			</td>
			<td id="vtd1">대출 기간은 15일 이며 연체시, 추가 대출이 불가합니다.
			</td>
		<tr>			
			<td id="vtd1">반납 예정일</td>
			<td id="vtd2" colspan="2">[ ${read.submit_date} ] 입니다.<button onclick="location.href='/userLibrary/service/reserve?bno=${read.bNo}&submit_date=${read.submit_date}'">대출 예약하기</button></td>
		</tr>
		</c:if>
		</c:if>
		</tr>
	</table>
	<c:if test="${checkUser==-1&&read.bRent==1}">
	<table>
		<tr>
			<td colspan="3" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button onclick="location.href='/userLibrary/service/deliveryApply?bNo=${read.bNo}&bTitle=${read.bTitle}'">도서배달서비스</button>
			</div>
			<td colspan="3" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button onclick="javascript:history.back()" >돌아가기</button>
			</div>
			</td>
		</tr>
	</table>
	</c:if>
	<c:if test="${checkUser==1}">
	<table>
		<tr>
			<td width="765px" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button onclick="javascript:history.back()" >돌아가기</button>
			</div>
			</td>
		</tr>
	</table>
	</c:if>
</div>
</body>
</html>