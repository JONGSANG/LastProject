<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
 <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">관리자 정보</h3>
            </div>
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-1"></div>
                <div class="col-sm-11">
                <table class="table table-bordered table-striped dataTable no-footer">
		<tr>
			<th width="100px" style="text-align: center;">아이디</th>
			<th width="100px" style="text-align: center;">이름</th>
			<th width="100px" style="text-align: center;">전화번호</th>
			<th width="250px" style="text-align: center;" colspan="2">부서</th>
			<th width="250px" style="text-align: center;" colspan="2">직급</th>
		</tr>
		<tr>
			<td id="vtd1" style="text-align: center;">${admin.id}</td>
			<td id="vtd1" style="text-align: center;">${admin.name}</td>
			<td id="vtd1" style="text-align: center;">${admin.phone}</td>
			<td id="vtd1" style="text-align: center;"><form action="/adminLibrary/adminInfo/adminPart" method="post">
				<input type="hidden" name="id" value="${admin.id}">
				<select name="j_part">
					<c:if test="${admin.j_part=='행정지원과'}">
					<option selected="selected">행정지원과</option>
					</c:if>
					<c:if test="${admin.j_part!='행정지원과'}">
					<option>행정지원과</option>
					</c:if>
					<c:if test="${admin.j_part=='정보자료과'}">
					<option selected="selected">정보자료과</option>
					</c:if>
					<c:if test="${admin.j_part!='정보자료과'}">
					<option>정보자료과</option>
					</c:if>
					<c:if test="${admin.j_part=='독서문화진흥과'}">
					<option selected="selected">독서문화진흥과</option>
					</c:if>
					<c:if test="${admin.j_part!='독서문화진흥과'}">
					<option>독서문화진흥과</option>
					</c:if>
					<c:if test="${admin.j_part=='평생학습지원과'}">
					<option selected="selected">평생학습지원과</option>
					</c:if>
					<c:if test="${admin.j_part!='평생학습지원과'}">
					<option>평생학습지원과</option>
					</c:if>
					<c:if test="${admin.j_part=='정보봉사과'}">
					<option selected="selected">정보봉사과</option>
					</c:if>
					<c:if test="${admin.j_part!='정보봉사과'}">
					<option>정보봉사과</option>
					</c:if>
				</select>
				</td>
				<td><button type="submit" class="btn btn-block btn-success" value="부서변경">부서변경</button></td>
			</form>
			<td id="vtd1"><form action="/adminLibrary/adminInfo/adminLevel" method="post">
				<input type="hidden" name="id" value="${admin.id}">
				<select name="j_level">
					<c:if test="${admin.j_level=='도서관장'}">
					<option selected="selected">도서관장</option>
					</c:if>
					<c:if test="${admin.j_level!='도서관장'}">
					<option>도서관장</option>
					</c:if>
					<c:if test="${admin.j_level=='과장'}">
					<option selected="selected">과장</option>
					</c:if>
					<c:if test="${admin.j_level!='과장'}">
					<option>과장</option>
					</c:if>
					<c:if test="${admin.j_level=='담당팀장'}">
					<option selected="selected">담당팀장</option>
					</c:if>
					<c:if test="${admin.j_level!='담당팀장'}">
					<option>담당팀장</option>
					</c:if>
					<c:if test="${admin.j_level=='직원'}">
					<option selected="selected">직원</option>
					</c:if>
					<c:if test="${admin.j_level!='직원'}">
					<option>직원</option>
					</c:if>
				</select></td>
				<td>
				<button type="submit" class="btn btn-block btn-success" value="직급변경">직급변경</button>
				</td>
			</form>
		</tr>
	</table>
                </div>
                </div>
              </div>
              <div class="box-footer">
              <div class="col-sm-11"></div>
              <div class="col-sm-1">
              
              <form action="/adminLibrary/adminInfo/adminDelete" method="post">
                <input type="hidden" name="id" value="${admin.id}">
				<button type="submit" class="btn btn-block btn-danger" value="관리자삭제">관리자삭제</button></td>
                </form>
              </div>
              </div>
          </div>
            </div>
	
	<!-- <table>
	<tr><td>&nbsp;</td></tr>
	
	<tr>
	<td width="807px"></td>
	<td width="100px" style="float: right;"><button class="btn btn-block btn-primary" onclick="javascript:history.back()" >돌아가기</button></td>
	</tr>
	</table> -->
</body>
</html>