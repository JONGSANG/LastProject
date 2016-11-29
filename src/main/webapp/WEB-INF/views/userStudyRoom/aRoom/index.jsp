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
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[0].getNum()}'" >
				${list[0].getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[1].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[1].getNum()}'" >
				${list[1].getNum()}
			</td>
		</c:if>
		<c:if test="${list[1].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[1].getNum()}
			</td>
		</c:if>
		<c:if test="${list[1].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[1].getNum()}
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[2].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[2].getNum()}'" >
				${list[2].getNum()}
			</td>
		</c:if>
		<c:if test="${list[2].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[2].getNum()}
			</td>
		</c:if>
		<c:if test="${list[2].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[2].getNum()}
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[3].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[3].getNum()}'" >
				${list[3].getNum()}
			</td>
		</c:if>
		<c:if test="${list[3].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[3].getNum()}
			</td>
		</c:if>
		<c:if test="${list[3].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[3].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[4].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[4].getNum()}'" >
				${list[4].getNum()}
			</td>
		</c:if>
		<c:if test="${list[4].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[4].getNum()}
			</td>
		</c:if>
		<c:if test="${list[4].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[4].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[5].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[5].getNum()}'" >
				${list[5].getNum()}
			</td>
		</c:if>
		<c:if test="${list[5].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[5].getNum()}
			</td>
		</c:if>
		<c:if test="${list[5].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[5].getNum()}
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[6].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[6].getNum()}'" >
				${list[6].getNum()}
			</td>
		</c:if>
		<c:if test="${list[6].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[6].getNum()}
			</td>
		</c:if>
		<c:if test="${list[6].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[6].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[7].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[7].getNum()}'" >
				${list[7].getNum()}
			</td>
		</c:if>
		<c:if test="${list[7].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[7].getNum()}
			</td>
		</c:if>
		<c:if test="${list[7].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[7].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[8].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[8].getNum()}'" >
				${list[8].getNum()}
			</td>
		</c:if>
		<c:if test="${list[8].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[8].getNum()}
			</td>
		</c:if>
		<c:if test="${list[8].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[8].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[9].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[9].getNum()}'" >
				${list[9].getNum()}
			</td>
		</c:if>
		<c:if test="${list[9].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[9].getNum()}
			</td>
		</c:if>
		<c:if test="${list[9].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[9].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[10].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[9].getNum()}'" >
				${list[10].getNum()}
			</td>
		</c:if>
		<c:if test="${list[10].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[10].getNum()}
			</td>
		</c:if>
		<c:if test="${list[10].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[10].getNum()}
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
		<c:if test="${list[11].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[11].getNum()}'" >
				${list[11].getNum()}
			</td>
		</c:if>
		<c:if test="${list[11].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[11].getNum()}
			</td>
		</c:if>
		<c:if test="${list[11].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[11].getNum()}
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[12].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[12].getNum()}'" >
				${list[12].getNum()}
			</td>
		</c:if>
		<c:if test="${list[12].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[12].getNum()}
			</td>
		</c:if>
		<c:if test="${list[12].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[12].getNum()}
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[13].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[13].getNum()}'" >
				${list[13].getNum()}
			</td>
		</c:if>
		<c:if test="${list[13].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[13].getNum()}
			</td>
		</c:if>
		<c:if test="${list[13].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[13].getNum()}
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
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
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
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
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
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
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[1].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(1).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
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
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list.get(0).getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list.get(0).getNum()}
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