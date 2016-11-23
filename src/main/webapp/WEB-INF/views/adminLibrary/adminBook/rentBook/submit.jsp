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
		<input type="hidden" value="null" name="select">
		<table width=1000; border="1">
			<tr>
				<td width="100">책 번호 :</td>
				<td width="300" colspan='2'>
					<input type="text" name='bno' maxlength="8" >
					<input type="submit" value="검색">
				</td>
			
			</tr>
			
			<tr>
				<td>ID: ${userInfo.id}</td>
				<td>이름: ${userInfo.name}</td>
				<td><b>현재 대출 권수: ${rcnt} 권</b></td>
<%-- 				<c:if test="${rcnt >= 5 }">
					<td><b style="color: RED">현재 대출 권수: ${rcnt} 권 [[ 대출 불가 ]]</b></td>
				</c:if>
 --%>

			</tr>

			<tr height=200 valign=top>
				<td colspan="3">
					<table width=1000 border="1">
						<tr>
							<th width="50">선택</th>
							<th width="50">순번</th>
							<th width="100">책번호</th>
							<th width="500">책 제목</th>
							<th width="150">대여 일</th>
							<th width="150">반납 예정일</th>
							<th width="100">연체 여부</th>
							<th width="100">연체 금액</th>
							
						</tr>
					</form>
					<form method="post">
						<c:forEach items="${rent}" var="rent" varStatus="var">
							<c:if test="${rcnt != 0}">
								<tr>
									<td width="50">
										<input type="radio" value="${rent.bno }" name="select" >
									</td>
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
									<td width="100">
										<c:if test="${rent.money==0 }">0 원</c:if> 
										<c:if test="${rent.money!=0 }">${rent.money} 원</c:if> 
									</td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="5" align="right">
					<input type="submit" id="btn_submit" onclick="submit_event();">
				</td>
			</tr>
		</form>
		
	</table>
	
</body>
<script language=javascript>
	var money = '${money}';
	var result = '${msg}';
	if (result == 'NOID') {
		alert("[회원ID]를 잘못입력 하셨습니다.");
	}else if (result == 'NOBOOK') {
		alert("[책번호]를 잘못입력 하셨습니다.");
	}else if (result == 'LATE') {
		alert("[연체]이용자로 대출이 불가능합니다.");
	}else if (result == 'LATEBOOK'){
		alert("연체료 [ "+money+" ] 를 꼭 확인 하시길 바랍니다.");
	}else if (result == 'SUBMIT'){
		alert("반납이 완료되었습니다.");	
	}

	function submit_event(){
		if (confirm("반납 하시겠습니까? ") == true){    //확인
		    document.form.submit();
		}else{   //취소
		    return;
		}
	}
</script>
</html>