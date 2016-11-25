<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>대출도서 베스트</title>
</head>
<body>
<section>
		<div id="word">
			<font style="font-size: 40px">대출도서 베스트</font>
		</div>
		<div id="link">
			<div id="link59">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>대출도서 베스트</b>
		</div>
	</section>
<div id="insidebody">
<table border="1">
	<tr>
		<th> 도서 번호 </th>
		<th> 책 제목 </th>
		<th> 책 대여 횟수 </th>
	</tr>
	
	<c:forEach items="${best}" var="best">
	<tr>
		<td>${best.BNO}</td>
		<td><a href="/userLibrary/libNews/best/read?BNO=${best.BNO}">${best.BTITLE}</a></td>
		<%-- <a href='/userLibrary/libNews/read?BNO=${best.BNO}'> --%>
		<td>${best.BRENT_CNT}</td>
	</tr>
	</c:forEach>
	
	
</table>
<a href='listBest'><button type="submit"> 목록 보기 </button></a>
</div>
<script>
    
    var result = '${result}';
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }
    
    </script>
    

</body>
</html>
