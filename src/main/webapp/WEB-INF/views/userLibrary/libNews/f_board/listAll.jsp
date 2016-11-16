<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<th style="width: 40px" align="center">번호</th>
		<th align="center" width="300">제목</th>
		<th align="center" width="130">ID</th>
		<th align="center">작성 일자</th>
		<th style="width: 60px" align="center">조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="list" varStatus="var">
	<tr>
		<td align="center">${var.index+1}</td>
		<td align="center"><a href='read?num=${list.num}'>${list.title}</a></td>
		<td align="center">${list.id}</td>
		<td align="center"><fmt:formatDate value="${list.write_date}" pattern="yyyy-MM-dd"/>
		
		</td>
		<td align="center">${list.viewcnt}</td>
	</tr>
	</c:forEach>
</table>

<a href='/userLibrary/libNews/f_board/register'><button type="submit" class="btn btn-primary">글쓰기</button></a>

<script>
    
    var result = '${result}';
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }
    
    </script>
    

</body>
</html>
