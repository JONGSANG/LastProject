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

<h1>제 2 열람실</h1>


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
		<c:if test="${llist[0].getState()==2}">
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
	<!-- 6 열 -->
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
	<!-- 7 열 -->
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
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
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
	<!-- 13 열 -->
		<c:if test="${list[10].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[10].getNum()}'" >
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
	<!-- 14 열 -->
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
	<!-- 3 열 -->
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
	<!-- 4 열 -->
		<c:if test="${list[14].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[14].getNum()}'" >
				${list[14].getNum()}
			</td>
		</c:if>
		<c:if test="${list[14].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[14].getNum()}
			</td>
		</c:if>
		<c:if test="${list[14].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[14].getNum()}
			</td>
		</c:if>
	<!-- 5 열 -->
		<c:if test="${list[15].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[15].getNum()}'" >
				${list[15].getNum()}
			</td>
		</c:if>
		<c:if test="${list[15].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[15].getNum()}
			</td>
		</c:if>
		<c:if test="${list[15].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[15].getNum()}
			</td>
		</c:if>
	<!-- 6 열 -->
		<c:if test="${list[16].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[16].getNum()}'" >
				${list[16].getNum()}
			</td>
		</c:if>
		<c:if test="${list[16].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[16].getNum()}
			</td>
		</c:if>
		<c:if test="${list[16].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[16].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[17].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[17].getNum()}'" >
				${list[17].getNum()}
			</td>
		</c:if>
		<c:if test="${list[17].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[17].getNum()}
			</td>
		</c:if>
		<c:if test="${list[17].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[17].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
		<c:if test="${list[18].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[18].getNum()}'" >
				${list[18].getNum()}
			</td>
		</c:if>
		<c:if test="${list[18].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[18].getNum()}
			</td>
		</c:if>
		<c:if test="${list[18].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[18].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[19].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[19].getNum()}'" >
				${list[19].getNum()}
			</td>
		</c:if>
		<c:if test="${list[19].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[19].getNum()}
			</td>
		</c:if>
		<c:if test="${list[19].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[19].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[20].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[20].getNum()}'" >
				${list[20].getNum()}
			</td>
		</c:if>
		<c:if test="${list[20].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[20].getNum()}
			</td>
		</c:if>
		<c:if test="${list[20].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[20].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
		<c:if test="${list[21].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[21].getNum()}'" >
				${list[21].getNum()}
			</td>
		</c:if>
		<c:if test="${list[21].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[21].getNum()}
			</td>
		</c:if>
		<c:if test="${list[21].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[21].getNum()}
			</td>
		</c:if>
	<!-- 13 열 -->
		<c:if test="${list[22].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[22].getNum()}'" >
				${list[22].getNum()}
			</td>
		</c:if>
		<c:if test="${list[22].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[22].getNum()}
			</td>
		</c:if>
		<c:if test="${list[22].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[22].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[23].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[23].getNum()}'" >
				${list[23].getNum()}
			</td>
		</c:if>
		<c:if test="${list[23].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[23].getNum()}
			</td>
		</c:if>
		<c:if test="${list[23].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[23].getNum()}
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
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
		<c:if test="${list[24].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[24].getNum()}'" >
				${list[24].getNum()}
			</td>
		</c:if>
		<c:if test="${list[24].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[24].getNum()}
			</td>
		</c:if>
		<c:if test="${list[24].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[24].getNum()}
			</td>
		</c:if>
	<!-- 6 열 -->
		<c:if test="${list[25].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[25].getNum()}'" >
				${list[25].getNum()}
			</td>
		</c:if>
		<c:if test="${list[25].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[25].getNum()}
			</td>
		</c:if>
		<c:if test="${list[25].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[25].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[26].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[26].getNum()}'" >
				${list[26].getNum()}
			</td>
		</c:if>
		<c:if test="${list[26].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[26].getNum()}
			</td>
		</c:if>
		<c:if test="${list[26].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[26].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
		<c:if test="${list[27].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[27].getNum()}'" >
				${list[27].getNum()}
			</td>
		</c:if>
		<c:if test="${list[27].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[27].getNum()}
			</td>
		</c:if>
		<c:if test="${list[27].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[27].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[28].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[28].getNum()}'" >
				${list[28].getNum()}
			</td>
		</c:if>
		<c:if test="${list[28].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[28].getNum()}
			</td>
		</c:if>
		<c:if test="${list[28].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[28].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[29].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[29].getNum()}'" >
				${list[29].getNum()}
			</td>
		</c:if>
		<c:if test="${list[29].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[29].getNum()}
			</td>
		</c:if>
		<c:if test="${list[29].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[29].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
		<c:if test="${list[30].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[30].getNum()}'" >
				${list[30].getNum()}
			</td>
		</c:if>
		<c:if test="${list[30].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[30].getNum()}
			</td>
		</c:if>
		<c:if test="${list[30].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[30].getNum()}
			</td>
		</c:if>
	<!-- 13 열 -->
		<c:if test="${list[31].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[31].getNum()}'" >
				${list[31].getNum()}
			</td>
		</c:if>
		<c:if test="${list[31].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[31].getNum()}
			</td>
		</c:if>
		<c:if test="${list[31].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[31].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[32].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[32].getNum()}'" >
				${list[32].getNum()}
			</td>
		</c:if>
		<c:if test="${list[32].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[32].getNum()}
			</td>
		</c:if>
		<c:if test="${list[32].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[32].getNum()}
			</td>
		</c:if>
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
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
		<c:if test="${list[33].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[33].getNum()}'" >
				${list[33].getNum()}
			</td>
		</c:if>
		<c:if test="${list[33].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[33].getNum()}
			</td>
		</c:if>
		<c:if test="${list[33].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[33].getNum()}
			</td>
		</c:if>
	<!-- 6 열 -->
		<c:if test="${list[34].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[34].getNum()}'" >
				${list[34].getNum()}
			</td>
		</c:if>
		<c:if test="${list[34].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[34].getNum()}
			</td>
		</c:if>
		<c:if test="${list[34].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[34].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[35].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[35].getNum()}'" >
				${list[35].getNum()}
			</td>
		</c:if>
		<c:if test="${list[35].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[35].getNum()}
			</td>
		</c:if>
		<c:if test="${list[35].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[35].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
		<c:if test="${list[36].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[36].getNum()}'" >
				${list[36].getNum()}
			</td>
		</c:if>
		<c:if test="${list[36].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[36].getNum()}
			</td>
		</c:if>
		<c:if test="${list[36].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[36].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[37].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[37].getNum()}'" >
				${list[37].getNum()}
			</td>
		</c:if>
		<c:if test="${list[37].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[37].getNum()}
			</td>
		</c:if>
		<c:if test="${list[37].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[37].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[38].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[38].getNum()}'" >
				${list[38].getNum()}
			</td>
		</c:if>
		<c:if test="${list[38].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[38].getNum()}
			</td>
		</c:if>
		<c:if test="${list[38].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[38].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
		<c:if test="${list[39].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[39].getNum()}'" >
				${list[39].getNum()}
			</td>
		</c:if>
		<c:if test="${list[39].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[39].getNum()}
			</td>
		</c:if>
		<c:if test="${list[39].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[39].getNum()}
			</td>
		</c:if>
	<!-- 13 열 -->
		<c:if test="${list[40].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[40].getNum()}'" >
				${list[40].getNum()}
			</td>
		</c:if>
		<c:if test="${list[40].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[40].getNum()}
			</td>
		</c:if>
		<c:if test="${list[40].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[40].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[41].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[41].getNum()}'" >
				${list[41].getNum()}
			</td>
		</c:if>
		<c:if test="${list[41].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[41].getNum()}
			</td>
		</c:if>
		<c:if test="${list[41].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[41].getNum()}
			</td>
		</c:if>
	<!-- 15 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	</tr>
<!-- 7 행 -->
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
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
		<c:if test="${list[42].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='insert?num=${list[42].getNum()}'" >
				${list[42].getNum()}
			</td>
		</c:if>
		<c:if test="${list[42].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[42].getNum()}
			</td>
		</c:if>
		<c:if test="${list[42].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[42].getNum()}
			</td>
		</c:if>
	<!-- 6 열 -->
		<c:if test="${list[43].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[43].getNum()}
			</td>
		</c:if>
		<c:if test="${list[43].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[43].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 13 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
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
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 3 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 4 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 5 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 6 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 8 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 9 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 12 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 13 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[0].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[0].getNum()}
				1
			</td>
		</c:if>
		<c:if test="${list[0].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[0].getNum()}
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