<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 class="box-title">도서 배달 서비스 관리</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">


			<h4 class="box-title">신청 대기</h4>
			<table width="600" border="1"
				class="table table-bordered table-hober dataTable">
				<tr>
					<th>신청인</th>
					<th>책제목</th>
					<th>신청일</th>
					<th>택배코드</th>
				</tr>
				<c:forEach items="${delivery}" var="delivery">
					<tr>
						<td>${delivery.id}</td>
						<td>${delivery.bTitle}</td>
						<td><fmt:formatDate value="${delivery.request_date}"
								pattern="yyyy-MM-dd" /></td>
						<td><form action="/adminLibrary/adminService/code"
								method="get">
								<input type="hidden" name="bNo" value="${delivery.bNo}">
								<input type="text" name="rent_num" placeholder="13자리 숫자만 입력가능"
									maxlength="13" pattern="[0-9]{13}"> <input
									type="submit" value="승인 및 배송">
							</form></td>
					</tr>
				</c:forEach>
			</table>
			<h4 class="box-title">신청 완료</h4>
			<table width="600" border="1"
				class="table table-bordered table-hober dataTable">
				<tr>
					<th>신청인</th>
					<th>책제목</th>
					<th>반납예정일</th>
					<th>택배코드</th>
				</tr>
				<c:forEach items="${deliverySuccesss}" var="deliverySuccesss">
					<tr>
						<td>${deliverySuccesss.id}</td>
						<td>${deliverySuccesss.bTitle}</td>
						<td>${deliverySuccesss.submit_date}</td>
						<td><a
							href="http://service.epost.go.kr/trace.RetrieveEmsTrace.postal?ems_gubun=E&POST_CODE=${deliverySuccesss.rent_num}"
							onClick="window.open(this.href, 'delivery', 'width=714, height=553, left=500, top=150'); return false;">${deliverySuccesss.rent_num}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="text-center">
			<ul class="pagination">


				<c:if test="${pageMaker.prev}">
					<li><a
						href="delivery${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
						<a href="delivery${pageMaker.makeQuery(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="delivery${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>
			</ul>
		</div>

	</div>

</body>
</html>