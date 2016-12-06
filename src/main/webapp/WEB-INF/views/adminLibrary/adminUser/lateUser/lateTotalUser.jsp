<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="/resources/js/table_error.js" type="text/javascript"></script>
<style type="text/css">
.clickable {
	cursor: pointer;
}

.hover {
	text-decoration: underline;
}

th {
	background: #1b608a;
	color: white;
	text-shadow: 1px 1px black;
}

.odd {
	background: #F6FFCC;
}

.even {
	background: #CCCCFF;
}
</style>
</head>
<body>
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 class="box-title">전체 연체 통계 관리</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">
			<button onclick="location.href='index'"
				class="btn btn-info pull-left">연체 관리</button>
			<div >
				<table
					class="sortable paginated table table-bordered table-hober dataTable">
					<thead>
						<tr>
							<th class="sorting">ID</th>
							<th class="sorting">이름</th>
							<th class="sorting">책 번호</th>
							<th class="sorting">책 제목</th>
							<th class="sorting">저자</th>
							<th class="sort-date">출판사</th>
							<th class="sorting">연체 시작일</th>
							<th class="sorting">반납일</th>
							<th class="sorting">연체료</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${lateUser}" var="lateUser">
							<tr>
								<td>${lateUser.id }</td>
								<td>${lateUser.name }</td>
								<td>${lateUser.bno }</td>
								<td>${lateUser.btitle }</td>
								<td>${lateUser.bwriter }</td>
								<td>${lateUser.bcompany }</td>
								<td><fmt:formatDate value="${lateUser.start_date }"
										pattern="yy-MM-dd" /></td>
								<td><fmt:formatDate value="${lateUser.end_date }"
										pattern="yy-MM-dd" /></td>
								<td><b style="color: red;">${lateUser.money }</b></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			
			<div class="text-center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li><a
							href="lateTotalUser${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
							<a href="lateTotalUser${pageMaker.makeQuery(idx)}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="lateTotalUser${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
					</c:if>

				</ul>

		<!-- /.box-body -->
		<div class="box-footer">
			<div heigt="200">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th colspan="6">연체 정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>연체 책 권수 :</td>
							<td>${cntLateBook}권</td>
							<td>연체 사용자 수 :</td>
							<td>${cntLateUser}명</td>
							<td>미회수 연체료 :</td>
							<td>${lateInfo.nsubTotal}원</td>
						</tr>
						<tr>
							<td>최장기 연체자 ID :</td>
							<td>${lateUserInfo.topLateUserID}님</td>
							<td>최장기 연체자 이름 :</td>
							<td>${lateUserInfo.topLateUserName}님</td>
							<td>최장기 연체 일수 :</td>
							<td>${lateUserInfo.topLateUserDay}일</td>
						</tr>
						<tr>

							<th>이번달 연체료 수입 :</th>
							<th colspan="2">${lateInfo.subMtotal}원</th>
							<th>연체료 수입 총액 :</th>
							<th colspan="2">${lateInfo.subTotal}원</th>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
		<!-- /.box-footer -->

	</div>
	<!-- /.box -->
</div>
</div>

</body>
</html>