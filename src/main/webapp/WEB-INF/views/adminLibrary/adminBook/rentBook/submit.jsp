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
<a href="rent"><h1>[ 대출 ]</h1></a>
<a href="submit"><h1>[ 반납 ]</h1></a>


	<br>
	<form method="post">
		<table width=1000; border="1">
			<tr>
				<td width="100">회원 ID :</td>
				<td width="300" colspan="2">
					<input type="text" name='id' value="${userInfo.id}" required="required"> 
					<input type="submit" value="검색" >
				</td>
			</tr>
			<tr>
				<c:if test="${rcnt < 5 }">
					<td width="100">책 번호 :</td>
					<td width="300">
						<input type="text" name='bno'>
						<input type="submit" value="대출">
					</td>
					<td><b>대출 가능</b></td>
				</c:if>
			</tr>
		</form>

			<tr>
				<td>ID: ${userInfo.id}</td>
				<td>이름: ${userInfo.name}</td>
				<c:if test="${rcnt < 5 }">
					<td><b>현재 대출 권수: ${rcnt} 권</b></td>
				</c:if>
				<c:if test="${rcnt >= 5 }">
					<td><b style="color: RED">현재 대출 권수: ${rcnt} 권 [[ 대출 불가 ]]</b></td>
				</c:if>


			</tr>

			<tr height=200 valign=top>
				<td colspan="3">
					<table width=1000 border="1">
						<tr>
							<th width="50">순번</th>
							<th width="100">책번호</th>
							<th width="500">책 제목</th>
							<th width="150">대여 일</th>
							<th width="150">반납 예정일</th>
						</tr>

						<c:forEach items="${rent}" var="rent" varStatus="var">
							<c:if test="${rcnt != 0}">
								<tr>
									<td width="50">${var.count }</td>
									<td width="100">${rent.bno }</td>
									<td width="500">${rent.btitle }</td>
									<td width="150"><fmt:formatDate value="${rent.rent_date }" pattern="yy-MM-dd"/> </td>
									<td width="150"><fmt:formatDate value="${rent.submit_date }" pattern="yy-MM-dd"/> </td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
</body>
<script language=javascript>
/* 	function getPost(mode) {
		var theForm = document.frmSubmit;
		if (mode == "01") {
			if (theForm.id.value == '') {
				alert("[회원ID]를 잘못입력 하셨습니다.");
			} else {
				theForm.method = "post";
				theForm.action = "index";
			}
		} else if (mode == "02") {
			if (theForm.bno.value == '') {
				alert("책 번호를 입력하세요!!");
				
			} else {
				theForm.method = "post";
				theForm.action = "rent";
			}
		} else {
			theForm.submit();
		}
	}
 */
	var result = '${msg}';
	if (result == 'NOID') {
		alert("[회원ID]를 잘못입력 하셨습니다.");
	}
	if (result == 'NOBOOK') {
		alert("[책번호]를 잘못입력 하셨습니다.");
	}

	var rcnt = '${rcnt}';
	if (rcnt >= 5) {
		alert("대출 도서가 5권이 초과했습니다.");
	}
</script>

</html>