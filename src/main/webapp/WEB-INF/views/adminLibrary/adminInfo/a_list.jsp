<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script>
	var success='${success}';
	
    if(success=='success'){
    	alert("계정 추가 성공");
    }
</script>
<title>Insert title here</title>
<style type="text/css">
th {text-align: center;}
td{text-align: center;}
</style>
</head>
<body>
 <div class="box">
            <div class="box-header">
              <h3 class="box-title">관리자 정보 관리</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>부서</th>
			<th>직급</th>
			<th>전화번호</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${adminList}" var="adminList">
		<tr>
			<td><a href="/adminLibrary/adminInfo/adminDetail?id=${adminList.id}">${adminList.id}</a></td>
			<td>${adminList.name}</td>
			<td>${adminList.j_part}</td>
			<td>${adminList.j_level}</td>
			<td>${adminList.phone}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	
	<%-- <c:if test="${pageMaker.prev}">
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
	</c:if> --%>
	
	<!-- <form method="get">
		<select name="searchType">
			<option value='아이디'>아이디</option>
			<option value='이름'>이름</option>
			<option value='부서'>부서</option>
			<option value='직급'>직급</option>
			<option value='전화번호'>전화번호</option>
		</select>
		<input type="text" name="keyword" required>
		<input type="submit" value="검색">
	</form> -->
</body>
</html>