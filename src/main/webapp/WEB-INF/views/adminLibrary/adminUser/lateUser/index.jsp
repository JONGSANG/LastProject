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
	<br>
					<table width=1000 border="1">
						<tr>
							<th width="50">순번</th>
							<th width="100">책번호</th>
							<th width="500">책 제목</th>
							<th width="150">대여 일</th>
							<th width="150">반납 예정일</th>
							<th width="100">연체 여부</th>
						</tr>

						<c:forEach items="${rent}" var="rent" varStatus="var">
							<c:if test="${rcnt != 0}">
								<tr>
									<td width="50">${var.count }</td>
									<td width="100">${rent.bno }</td>
									<td width="500">${rent.btitle }</td>
									<td width="150"><fmt:formatDate value="${rent.rent_date }" pattern="yy-MM-dd"/> </td>
									<td width="150"><fmt:formatDate value="${rent.submit_date }" pattern="yy-MM-dd"/> </td>
									<td width="100">
										<c:if test="${rent.check_late==true}">
											<b style="color: RED">O</b>
										</c:if>
										<c:if test="${rent.check_late==false}">
											<b >X</b>
										</c:if>
									</td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
</body>
<script language=javascript>
	var result = '${msg}';
	if (result == 'NOID') {
		alert("[회원ID]를 잘못입력 하셨습니다.");
	}else if (result == 'NOBOOK') {
		alert("[책번호]를 잘못입력 하셨습니다.");
	}else if (result == 'LATE') {
		alert("[연체]이용자로 대출이 불가능합니다.");
	}

	var rcnt = '${rcnt}';
	if (rcnt >= 5) {
		alert("대출 도서가 5권이 초과했습니다.");
	}
</script>

</html>