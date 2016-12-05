<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
tr{text-align: center;}
th{text-align: center;}
</style>
</head>
<body>
	 <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">회원 정보 수정</h3>
            </div>
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-12">
                <table class="table table-bordered table-striped dataTable no-footer">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>이메일</th>
			<th>휴대전화번호</th>
			<th colspan="2">회원등급</th>
			<th>강제탈퇴</th>
		</tr>
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.birth}</td>
			<td>${user.email}</td>
			<td>${user.phone}</td>
			<td>
			<form action="/adminLibrary/adminInfo/roleChange" method="post">
			<input type="hidden" name="id" value="${user.id}">
				<select name="role">
				<c:if test="${user.role=='ROLE_SEMIUSER'}">
					<option value="ROLE_SEMIUSER" selected="selected">준회원</option>
				</c:if>
				<c:if test="${user.role!='ROLE_SEMIUSER'}">
					<option value="ROLE_SEMIUSER">준회원</option>
				</c:if>
				<c:if test="${user.role=='ROLE_USER'}">
					<option value="ROLE_USER" selected="selected">정회원</option>
				</c:if>
				<c:if test="${user.role!='ROLE_USER'}">
					<option value="ROLE_USER">정회원</option>
				</c:if>
				</select>
				</td><td>
			<input type="submit"  class="btn btn-info" value="회원등급변경">
			</form></td>
			<td><form action="/adminLibrary/adminInfo/userDelete" method="post">
				<input type="hidden" name="id" value="${user.id}">
                <button type="submit" class="btn btn-info">강제회원탈퇴</button>
			</form></td>
		</tr>
		<tr>
			<th colspan="5">주소</th>
			<th colspan="3">바코드(회원증)</th>			
		</tr>
		<tr>
			<td colspan="5">${user.address}</td>
			<td colspan="3" align="center"><img img src="/resources/barcode_img/${user.id}.png" width="300"></td>
		</tr>
	</table>
                </div>
                </div>
              </div>            
          </div>

	<table class="table table-bordered table-striped dataTable no-footer">
		<tr>
			<th>책 제목</th>
			<th>대출일</th>
			<th>반납예정일</th>
			<th>연체일수</th>
			<th>상태</th>
		</tr>
		<c:if test="${empty rent}">
	<tr>
	<td colspan="6">내역이 존재하지 않습니다.</td>
	</tr>
	</c:if>
	<c:forEach items="${rent}" var="rent">
	<tr>
		<td>${rent.btitle}</td>
		<td>${rent.rent_date}</td>
		<td>${rent.submit_date}</td>
		<c:if test="${rent.late==0}">
		<td>연체없음</td>
		</c:if>
		<c:if test="${rent.late!=0}">
		<td>${rent.late}일</td>
		</c:if>
		<c:if test="${rent.late==0}"><td>대출중</td> </c:if>
		<c:if test="${rent.late>0}"><td style="color: red;">연체중</td></c:if>
	</tr>
	</c:forEach>
	</table>
</body>
</html>