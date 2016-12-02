<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
var rep='${rep}';
var repDel='${repDel}';

if(rep=='rep'){
	alert("댓글 추가 성공");
}
if(repDel=='repDel'){
	alert("댓글 삭제 성공");
}
</script>
</head>
<body>
	<table>
		<tr>
			<th>글번호</th>
			<td>${detail.num}</td>
			<th>민원종류</th>
			<td>${detail.mselect}</td>
			<th>ID</th>
			<td>${detail.id}</td>
			<th>조회수</th>
			<td>${detail.viewcnt}</td>
			<th>작성날짜</th>
			<td><fmt:formatDate value="${detail.min_date}" pattern="yyyy-MM-dd" />
		</tr>
		<tr>
			<th>제목</th>
			<td>${detai.title}</td>
		</tr>
		<tr>
			<td colspan="10"><textarea rows="20" cols="105" readonly="readonly">${detail.content}</textarea></td>
		</tr>
		<tr>
			<td><a href='/adminLibrary/adminEtc/mList'><button type="submit">목록보기</button></a></td>
		</tr>
		</table>
		<form method="post">
			<input type="hidden" name="num" value="${detail.num}">
			<table>
			<tr>
			<td colspan="2">댓글</td>
			</tr>
			<tr>
			<td><textarea name="content" rows="5" cols="102" placeholder="내용을 입력해 주세요." ></textarea></td>
			</tr>
			<tr>
				<td><button type="submit">댓글 작성</button></td>
			</tr>
			</table>
		</form>
		<table>
		<c:forEach items="${replyDetail}" var="replyDetail">
			<tr>
				<td>${replyDetail.id}</td><td>&nbsp;|&nbsp;<fmt:formatDate value="${replyDetail.min_date}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="4" cols="105" readonly="readonly">${replyDetail.content}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<c:if test="${replyDetail.id==id}">
				<button type="button" onclick="location.href='/adminLibrary/adminEtc/mDelete?num=${replyDetail.num}'">삭제</button>
				</c:if>
				</td>
			</tr>
		</c:forEach>
		</table>
</body>
</html>