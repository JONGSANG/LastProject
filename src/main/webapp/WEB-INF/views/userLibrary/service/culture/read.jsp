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
<h3>culture_read page</h3><br>
	<table border = "1">
		<tr>
			<th>글번호 : ${cultureVO.num }</th>
			<th>글쓴날짜 : <fmt:formatDate value="${cultureVO.write_date}" pattern="yyyy-MM-dd"/></th>
		</tr>
		<tr>
			<td>시작날짜 : ${cultureVO.start_date }</td>
			<td>끝나는날짜 : ${cultureVO.end_date }</td>
		</tr>
		<tr>
			<td>최대인원수 : ${cultureVO.max_cnt }</td>
			<td>현제인원수 : ${culture_tocnt }</td>
		</tr>
		<tr>
			<th colspan = "2" align = "left">제목 : (${cultureVO.cselect})  ${cultureVO.title }</th>
		</tr>
		<tr>
			<th><img src = "/resources/file/${cultureVO.newname }"width="295px" height="295px" title="클릭하시면 원본크기로 보실 수 있습니다." style="cursor: pointer;" onclick="doImgPop('/resources/file/${cultureVO.newname }')"/></th>
		</tr>
		<tr>
			<th colspan = "2" align = "left">내용 : ${cultureVO.content }</th> 
		</tr>
	</table><br>
	
<c:if test="${isID!=0 }">
이미 신청하셧습니다.<br>
취소 하실라면 아래버튼을 눌러주시기 바랍니다.<br>
	<form action = "/userLibrary/service/culture/joindel" method = "POST">
		<input type = "hidden" name = "anum" value = "${cultureVO.num }">
		<input type = "submit" value = "신청취소">
	</form>
</c:if>
<security:authorize access="hasRole('ROLE_USER')">
	<c:if test="${isID==0 }">
			<c:if test="${culture_tocnt != cultureVO.max_cnt}">
				<input type = "button" value = "신청하기" onclick = "location.href ='/userLibrary/service/culture/join?num=${cultureVO.num}'">
			</c:if>
	</c:if>
</security:authorize>

<input type = "button" value = "목록으로" onclick = "location.href='/userLibrary/service/culture/list'">

<security:authorize access="hasRole('ROLE_ADMIN')" >
	<form action = "/userLibrary/service/culture/modify", method = "GET">
		<input type = "hidden" name = "num" value = "${cultureVO.num }">
		<input type = "submit" value = "수정">
	</form>

	<form action = "/userLibrary/service/culture/delete", method = "POST">
		<input type = "hidden" name = "newname" value = "${cultureVO.newname }">
		<input type = "hidden" name = "num" value = "${cultureVO.num }">
		<input type = "submit" value = "삭제">
	</form>
</security:authorize>	
<%-- <form action = "modify", method = "GET">
	<input type = "hidden" name = "num" value = "${cultureVO.num }">
	<input type = "submit" value = "수정">
</form>
<c:if test="${cultureVO.tocnt != cultureVO.max_cnt }">
<input type = "button" value = "신청하기" onclick = "location.href ='/userLibrary/service/culture/join?num=${cultureVO.num}'">
</c:if>
<input type = "button" value = "목록으로" onclick = "location.href='list'">
<form action = "delete", method = "POST">
	<input type = "hidden" name = "num" value = "${cultureVO.num }">
	<input type = "submit" value = "삭제">
</form> --%>
</div>
</body>
</html>