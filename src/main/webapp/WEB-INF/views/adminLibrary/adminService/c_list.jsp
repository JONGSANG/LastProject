<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
 <div class="box">
            <div class="box-header">
              <h3 class="box-title">방과후 학교</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
	<table id="example1" class="table table-bordered table-striped">
                <thead>
		<tr>
			<th width="150px" style="text-align: center;">글번호</th>
			<th width="150px" style="text-align: center;">카테고리</th>
			<th>제목</th>
			<th width="150px" style="text-align: center;">현재인원</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${culture}" var="culture">
		<tr>
			<td>${culture.num}</td>
			<td>${culture.cselect}</td>
			<td><a href="/adminLibrary/adminService/c_detail?num=${culture.num}">${culture.title}</a></td>
			<td>${culture.tocnt}/${culture.max_cnt}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<%-- <c:if test="${pageMaker.prev}">
		<li><a
			href="c_list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<li
			<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
			<a href="c_list${pageMaker.makeQuery(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="c_list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
	</c:if> --%>
</body>
</html>