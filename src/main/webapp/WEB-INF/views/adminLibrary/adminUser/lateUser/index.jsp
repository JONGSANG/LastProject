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
.clickable {cursor: pointer;}
.hover {text-decoration: underline;}
th{ background: #1b608a; color: white; text-shadow: 1px 1px black;}
.odd{ background: #F6FFCC;}
.even{ background: #CCCCFF;}
</style>
</head>
<body>
<h3>연체 관리</h3>
<br>
	<a href="lateUserMail"><h3>연체사용자에게 단체 메일 보내기</h3></a>
	<a href="lateTotalUser"><h3>전체 연체 통계 관리</h3></a>
	
<br>
<table class="table table-bordered table-striped dataTable no-footer">
    <thead>
      <tr>
        <th class="sorting">ID</th>
        <th class="sorting">이름</th>
        <th class="sorting">책 번호</th>
        <th class="sorting">책 제목</th>
        <th class="sorting">저자</th>
        <th class="sort-date">출판사</th>
        <th class="sorting">연체 시작일</th>
        <th class="sorting">연체 일</th>
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
       <td><fmt:formatDate value="${lateUser.start_date }" pattern="yy-MM-dd"/> </td>       
       <td><b style="color: red;"><fmt:formatNumber value="${lateUser.money/100}" pattern="0"/> 일</b></td>
       <td><b style="color: red;">${lateUser.money } 원</b></td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
  
      <div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="index${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.pageInfo.page == idx?'class =active':''}"/>>
					<a href="index${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="index${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
</body>
</html>