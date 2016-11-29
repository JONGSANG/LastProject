<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
.room{
   	border-spacing: 10px;
	border-collapse : inherit;
}
.room #empty{
	border: none;
}
</style>
</head>
<body>
<c:forEach items="${list}" var="list">
	<c:out value="${list.bNo}"></c:out>
</c:forEach>
<h1>제 1 열람실</h1>


<table width="910px" border="1" class="room" >
<!-- 1 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 6 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 7 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 10 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 11 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 2 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[1].getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(1).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 3 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 4 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 6 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 7 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 10 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 11 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 5 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 6 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 1 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 6 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 7 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 10 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 11 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 8 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 9 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${state==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
		<c:if test="${state==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getbNo()}
				1
			</td>
		</c:if>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 10 행 -->
	<tr>
	<!-- 1 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 2 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 6 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 7 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 10 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 11 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 14 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>

</table>


</body>
</html>