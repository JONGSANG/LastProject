<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
var change='${change}';
var leave='${leave}';

if(change=='change'){
	alert("권한 변경 완료");
}
if(leave=='leave'){
	alert("회원 탈퇴 완료");
}
</script>
</head>
<body>
	<div class="box">
            <div class="box-header">
              <h3 class="box-title">대기중인 민원</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>전화번호</th>
			<th>가입일</th>
			<th>회원등급</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${userList}" var="userList">
		<tr>
			<td><a href="/adminLibrary/adminInfo/userDetail?id=${userList.id}">${userList.id}</a></td>
			<td>${userList.name}</td>
			<td>${userList.birth}</td>
			<td>${userList.phone}</td>
			<td><fmt:formatDate value="${userList.joinDate}" pattern="yyyy.MM.dd"/>
			<td>
			<c:if test="${userList.role=='ROLE_SEMIUSER'}">
				"준회원"
			</c:if>
			<c:if test="${userList.role=='ROLE_USER'}">
				"정회원"
			</c:if>
			</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	

<%-- 	<c:if test="${pageMaker.prev}">
		<li><a
			href="m_list${pageMaker.typeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="m_list${pageMaker.typeSearch(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="m_list${pageMaker.typeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if>
	
	<form method="get">
		<select name="searchType">
			<option value='아이디'>아이디</option>
			<option value='이름'>이름</option>
			<option value='전화번호'>전화번호</option>
			<option value='이메일'>이메일</option>
			<option value='회원등급'>회원등급</option>
		</select>
		<input type="text" name="keyword" required>
		<input type="submit" value="검색">
	</form> --%>
	

</body>
</html>