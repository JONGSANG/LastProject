<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>openboard_read</h3>
<!-- 공개자료실 게시판 openboard_read 메소드에서 변수명을 지정안했기때문에
	 o_BoardVO 로 자동으로 지정이됨
	 단, 첫 글자는 소문자여야됨 -->
<table>
	<tr>
		<td>글번호 : <input type = "text" name = "num" value = "${o_BoardVO.num }" readonly></td>
	</tr>
	<tr>
		<td>글작성날짜 : <fmt:formatDate value="${o_BoardVO.write_date}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<td>작성자 : <input type = "text" name = "id" value = "${o_BoardVO.id }" readonly></td>
	</tr>
		<td>글제목 : <input type = "text" name = "title" value = "${o_BoardVO.title }" readonly></td>
	<tr>
		<td>내용 : <input type = "text" name = "num" value = "${o_BoardVO.content }" readonly></td>
	</tr>
	<tr>
<!-- 파일다운로드는 해당 파일이 실제 존재하는 물리적경로를 넣어서 다이렉트로 다운로드함
	 대신 다운받을땐 중복방지를위한 랜덤이름이 적힌 newname으로 다운로드함 
	 이유는 파일을 업로드할때 실제 파일이름을 중복방지인 newname으로 저장했기때문 -->
		<td>파일 : <a href = "/resources/file/${o_BoardVO.newname }" download>${o_BoardVO.orgname }</a></td>
	</tr>
</table>
<!-- 게시글을 읽는건 아무나 가능하지만 게시글에 대한 수정과 삭제는 관리자권한을 가진 ROLE_ADMIN 만 가능함-->
<security:authorize access="hasRole('ROLE_ADMIN')" >
<form action = "modify", method = "GET">
	<input type = "hidden" name = "num" value = "${o_BoardVO.num }">
	<input type = "submit" value = "수정">
</form>
<form action = "delete", method = "POST">
	<input type = "hidden" name = "num" value = "${o_BoardVO.num }">
	<input type = "hidden" name = "newname" value = "${o_BoardVO.newname }">
<input type = "submit" value = "삭제">
</form>
</security:authorize>
<input type = "button" value = "목록으로" onclick = "location.href='/userLibrary/service/openboard/list'">
</body>
</html>