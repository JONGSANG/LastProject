<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>민원 게시판</title>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">민원 게시판</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>민원 게시판</b>
		</div>
	</section>
	
	<div id="insidebody">
	<form action="modify" method="post">
	<input type="hidden" name="num" value="${boardVO.num}">
	<input type="hidden" name="id" value="${boardVO.id}">
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${boardVO.num}</td>
	<th width="100px">ID</th><td  width="120px" id="listTitle" align="center">${boardVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${boardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${boardVO.min_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th>
	<td id="listTitle" colspan="5">
		<input id="write" style="width: 400px; border: #dddddd 1px solid;" type="text" name='title' value="${boardVO.title}">
	</td>
	<th>민원 종류</th>
	<td style="text-align: center;">
	<input type="text" name="mselect" class="form-control" value="${boardVO.mselect}" readonly="readonly" style="margin : 11px 0 0 10px; font-size : 14px; width : 90px; background-color: white; border: 0; height: 20px">
	</td>
	</tr>
	<tr>
		<td colspan="8" style="padding-top: 10px" align="center">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" >${boardVO.content}</textarea>
			</td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 5px; border: none;">
			<div class="fright">
			<button type="submit">저장</button>
			<button onclick="javascript:history.back()" >취소</button>
			</div>
			</td>
		</tr>
	</table>
		</form>
	
	</div>
</body>
</html>