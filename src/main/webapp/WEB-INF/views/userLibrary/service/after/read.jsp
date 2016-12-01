<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function doImgPop(img) {
		img1 = new Image();
		img1.src = (img);
		imgControll(img);
	}

	function imgControll(img) {
		if ((img1.width != 0) && (img1.height != 0)) {
			viewImage(img);
		} else {
			controller = "imgControll('" + img + "')";
			intervalID = setTimeout(controller, 20);
		}
	}
	function viewImage(img) {
		W = img1.width;
		H = img1.height;
		O = "width=" + W + ",height=" + H + ",scrollbars=yes";
		imgWin = window.open("", "", O);
		imgWin.document
				.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
		imgWin.document.write("<body topmargin=0 leftmargin=0>");
		imgWin.document
				.write("<img src="
						+ img
						+ " onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
		imgWin.document.close();
	}
</script>
<title>방과후 학교</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">방과후 학교</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>방과후 학교</b>
		</div>
	</section>
	<div id="insidebody">
		<table class="listread" style="width: 760px">
			<tr>
				<th width="80px">글번호</th>
				<td width="40px" id="listTitle" align="center">${afterVO.num }</td>
				<th width="40px">ID</th>
				<td width=100px " id="listTitle" align="center">${afterVO.id}</td>
				<th width="80px">조회수</th>
				<td width="210px" id="listTitle" align="center">${afterVO.viewcnt}</td>
				<th width="90px">작성날짜</th>
				<td width="120px" id="listTitle" align="center"><fmt:formatDate
						value="${afterVO.write_date}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td colspan="3" id="listTitle" align="center">${afterVO.aselect}</td>
				<th>기간</th>
				<td width="200px" id="listTitle" align="center"><font
					color="red">${afterVO.start_date }&nbsp;~&nbsp;${afterVO.end_date }</font></td>
				<th width="70px">신청인원</th>
				<td width="100px" id="listTitle" align="center"><font
					color="blue">${afterVO.max_cnt }</font>&nbsp;/&nbsp;<font
					color="red">${after_tocnt}</font></td>
			</tr>
			<tr>
				<th>제목</th>
				<td id="listTitle" colspan="8" style="padding-left: 10px">${afterVO.title }</td>
			</tr>
			<tr>
				<td align="center" colspan="8"><img
					src="/resources/file/${afterVO.newname }" width="750px"
					title="클릭하시면 원본크기로 보실 수 있습니다." style="cursor: pointer;"
					onclick="doImgPop('/resources/file/${afterVO.newname }')" /></td>
			</tr>
			<tr>
				<td id="listcontents" colspan="8" style="height: 400px"><textarea
						rows="20" cols="105" style="resize: none;" readonly="readonly">${afterVO.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="8" style="padding-top: 5px; border: none;">
					<!-- 게시글을 읽는건 아무나 가능하지만 게시글에 대한 수정과 삭제는 관리자권한을 가진 ROLE_ADMIN 만 가능함-->
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<form style="position: absolute;" action="delete" , method="POST">
							<button style="width: 50px" type="button"
								onclick="location.href='modify?num=${afterVO.num}'">수정</button>
							<input type="hidden" name="newname" value="${afterVO.newname }">
							<input type="hidden" name="num" value="${afterVO.num }">
							<button style="width: 50px" name=submit>삭제</button>
					</security:authorize> <a href='list'><button type="button">목록보기</button></a>
					</form>
					<div class="fright">
						<c:if test="${isID!=0 }">
							<form action="/userLibrary/service/after/joindel" method="POST">
								<input type="hidden" name="anum" value="${afterVO.num }">
								<button name="submit" value="신청취소">신청 취소</button>
							</form>
						</c:if>
						<security:authorize access="hasRole('ROLE_USER')">
							<c:if test="${isID==0 }">
								<c:if test="${after_tocnt != afterVO.max_cnt}">
									<button value="신청하기"
										onclick="location.href ='/userLibrary/service/after/join?num=${afterVO.num}'">신청하기</button>
								</c:if>
							</c:if>
						</security:authorize>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>