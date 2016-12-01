<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>modify</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">공개 자료실</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>공개 자료실</b>
		</div>
	</section>
<div id="insidebody">
	<form method = "POST" enctype="multipart/form-data" >
	<input type = "hidden" name = "newname" value = "${o_BoardVO.newname }">
	<table class="listread" style="width: 760px">
	<tr>
	<th width="80px">글번호</th><td  width="30px" id="listTitle" align="center">${o_BoardVO.num}</td>
	<th width="100px">ID</th><td  width="120px" id="listTitle" align="center">${o_BoardVO.id}</td>
	<th width="100px">조회수</th><td  width="80px" id="listTitle" align="center">${o_BoardVO.viewcnt}</td>
	<th width="100px">작성날짜</th><td  width="140px" id="listTitle" align="center"><fmt:formatDate value="${o_BoardVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
	<th>제목</th>
	<td id="listTitle" colspan="5">
		<input id="write" style="width: 400px; border: #dddddd 1px solid;" type="text" name='title' value="${o_BoardVO.title}">
	</td>
	<th>첨부 파일</th>
	<td style="padding-left: 5px;"><input style="width: 130px; background-color: white; padding-top: 10px" type = "file" name = "file" required="required">
	</td>
	</tr>
	<tr>
		<td colspan="8" style="padding-top: 10px" align="center">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" >${o_BoardVO.content}</textarea>
			</td>
	</tr>
	<tr>
	<th>첨부 파일</th><td colspan="7"><a href = "/resources/file/${o_BoardVO.newname }" download>${o_BoardVO.orgname }</a></td>
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