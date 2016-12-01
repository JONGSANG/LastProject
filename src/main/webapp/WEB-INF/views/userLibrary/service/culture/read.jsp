<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function doImgPop(img){ 
	 img1= new Image(); 
	 img1.src=(img); 
	 imgControll(img); 
	} 
	  
	function imgControll(img){ 
	 if((img1.width!=0)&&(img1.height!=0)){ 
	    viewImage(img); 
	  } 
	  else{ 
	     controller="imgControll('"+img+"')"; 
	     intervalID=setTimeout(controller,20); 
	  } 
	}
	function viewImage(img){ 
	 W=img1.width; 
	 H=img1.height; 
	 O="width="+W+",height="+H+",scrollbars=yes"; 
	 imgWin=window.open("","",O); 
	 imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
	 imgWin.document.write("<body topmargin=0 leftmargin=0>");
	 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
	 imgWin.document.close();
	}
</script>
<title>문화 행사</title>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">문화 행사</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>문화 행사</b>
		</div>
	</section>
	<div id="insidebody">
	<table class="listread" style="width: 760px">
			<tr>
				<th width="80px">글번호</th>
				<td width="40px" id="listTitle" align="center">${cultureVO.num }</td>
				<th width="40px">ID</th>
				<td width=100px " id="listTitle" align="center">${cultureVO.id}</td>
				<th width="80px">조회수</th>
				<td width="210px" id="listTitle" align="center">${cultureVO.viewcnt}</td>
				<th width="90px">작성날짜</th>
				<td width="120px" id="listTitle" align="center"><fmt:formatDate
						value="${cultureVO.write_date}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td colspan="3" id="listTitle" align="center">${cultureVO.cselect}</td>
				<th>기간</th>
				<td width="200px" id="listTitle" align="center"><font
					color="red">${cultureVO.start_date }&nbsp;~&nbsp;${cultureVO.end_date }</font></td>
				<th width="70px">신청인원</th>
				<td width="100px" id="listTitle" align="center"><font
					color="blue">${cultureVO.max_cnt }</font>&nbsp;/&nbsp;<font
					color="red">${culture_tocnt}</font></td>
			</tr>
			<tr>
				<th>제목</th>
				<td id="listTitle" colspan="8" style="padding-left: 10px">${cultureVO.title }</td>
			</tr>
			<tr>
				<td align="center" colspan="8"><img
					src="/resources/file/${cultureVO.newname }" width="750px"
					title="클릭하시면 원본크기로 보실 수 있습니다." style="cursor: pointer;"
					onclick="doImgPop('/resources/file/${cultureVO.newname }')" /></td>
			</tr>
			<tr>
				<td id="listcontents" colspan="8" style="height: 400px"><textarea
						rows="20" cols="105" style="resize: none;" readonly="readonly">${cultureVO.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="8" style="padding-top: 5px; border: none;">
					<!-- 게시글을 읽는건 아무나 가능하지만 게시글에 대한 수정과 삭제는 관리자권한을 가진 ROLE_ADMIN 만 가능함-->
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<form style="position: absolute;" action="delete" , method="POST">
							<button style="width: 50px" type="button"
								onclick="location.href='modify?num=${cultureVO.num}'">수정</button>
							<input type="hidden" name="newname" value="${cultureVO.newname }">
							<input type="hidden" name="num" value="${cultureVO.num }">
							<button style="width: 50px" name=submit>삭제</button>
					</security:authorize> <a href='list'><button type="button">목록보기</button></a>
					</form>
					<div class="fright">
						<c:if test="${isID!=0 }">
						<c:if test="${cultureVO.state==0 }">
						<form action="/userLibrary/service/culture/joindel" method="POST">
								<input type="hidden" name="anum" value="${cultureVO.num }">
								<button name="submit" value="신청취소">신청 취소</button>
							</form>
							</c:if>
						</c:if>
						<security:authorize access="hasRole('ROLE_USER')">
							<c:if test="${isID==0 }">
								<c:if test="${after_tocnt != cultureVO.max_cnt}">
									<button value="신청하기"
										onclick="location.href ='/userLibrary/service/culture/join?num=${cultureVO.num}'">신청하기</button>
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