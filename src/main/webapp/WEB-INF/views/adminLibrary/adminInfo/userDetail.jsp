<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
th {text-align: center;}
td{text-align: center;}
</style>
</head>
<body>
	 <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">회원 상세보기</h3>
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
			<th>주소</th>
			<th colspan="2">회원등급</th>
			<th>강제탈퇴</th>
		</tr>
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.birth}</td>
			<td>${user.email}</td>
			<td>${user.phone}</td>
			<td>${user.address}</td>
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
			<input type="submit" value="회원등급변경">
			</form></td>
			<td><form action="/adminLibrary/adminInfo/userDelete" method="post">
				<input type="hidden" name="id" value="${user.id}">
				<input type="submit" value="강제회원탈퇴">
			</form></td>
		</tr>
	</table>
                </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
<!--                 <button class="btn btn-default" onclick="javascript:history.back()">취소하기</button> -->
                <button type="submit" class="btn btn-info pull-right">강제회원탈퇴</button>
                </form>
              </div>
              <!-- /.box-footer -->
            
          </div>

	 <!-- <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">관리자 비밀번호 수정</h3>
            </div>
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-12">
                
                </div>
                </div>
              </div>
              /.box-body
              <div class="box-footer">
                <button class="btn btn-default" onclick="javascript:history.back()">취소하기</button>
                <button type="submit" class="btn btn-info pull-right">강제회원탈퇴</button>
                </form>
              </div>
              /.box-footer
            
          </div> -->

	
	<table class="table table-bordered table-striped dataTable no-footer">
		<tr>
			<th>책 제목</th>
			<th>대출일</th>
			<th>반납예정일</th>
			<th>연체일수</th>
			<th>상태</th>
		</tr>
		<c:forEach items="${rent}" var="rent" >
		<tr>
			<td>${rent.btitle}</td>
			<td>${rent.rent_date}</td>
			<td>${rent.submit_date}</td>
			<td><c:out value="${rent.late}" ></c:out></td>
			<c:if test="${rent.check_submit==false}">
				<c:if test="${rent.check_late==true}">
				<td>연체중</td>
				</c:if>
				<td>대출중</td>
			</c:if>
		</tr> 
		</c:forEach>
	</table>
</body>
</html>