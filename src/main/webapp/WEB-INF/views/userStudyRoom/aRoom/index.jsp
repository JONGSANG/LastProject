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
	text-align: center;
}
th{text-align: center;}
.room #empty{
	border: none;
}
</style>
<script>
opener.location.reload();
window.close();
</script>
<script>
setTimeout("history.go(0)", 60000);
</script>
</head>
<body style="  margin: 0 auto; max-width: 2000px; width: 1000px">
<div>
<h1>제 1 열람실</h1>
<table width="910px" border="1" class="room aroomback" >
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[0].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[1].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[2].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[3].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[4].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[5].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[6].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[7].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[8].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[9].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[10].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[11].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[12].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[13].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[14].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[14].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 7 열 -->
		<c:if test="${list[15].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[15].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 8 열 -->
		<c:if test="${list[16].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[16].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 9 열 -->
		<c:if test="${list[17].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[17].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 10 열 -->
		<c:if test="${list[18].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[18].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 11 열 -->
		<c:if test="${list[19].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[19].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[20].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[20].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 14 열 -->
		<c:if test="${list[21].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[21].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[22].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[22].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 3 열 -->
		<c:if test="${list[23].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[23].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 4 열 -->
		<c:if test="${list[24].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[24].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[25].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[25].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[26].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[27].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[27].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 9 열 -->
		<c:if test="${list[28].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[28].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 10 열 -->
		<c:if test="${list[29].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[29].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 11 열 -->
		<c:if test="${list[30].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[30].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[31].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[31].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 3 열 -->
		<c:if test="${list[32].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[32].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 4 열 -->
		<c:if test="${list[33].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[33].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[34].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[34].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[35].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[36].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[36].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 9 열 -->
		<c:if test="${list[37].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[37].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 10 열 -->
		<c:if test="${list[38].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[38].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 11 열 -->
		<c:if test="${list[39].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[39].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
		<c:if test="${list[40].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[40].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 3 열 -->
		<c:if test="${list[41].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[41].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 4 열 -->
		<c:if test="${list[42].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[42].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
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
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[43].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[43].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[43].getNum()}
			</td>
		</c:if>
		<c:if test="${list[43].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[43].getNum()}
			</td>
		</c:if>
		<c:if test="${list[43].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[43].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[44].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[44].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[44].getNum()}
			</td>
		</c:if>
		<c:if test="${list[44].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[44].getNum()}
			</td>
		</c:if>
		<c:if test="${list[44].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[44].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[45].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[45].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[45].getNum()}
			</td>
		</c:if>
		<c:if test="${list[45].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[45].getNum()}
			</td>
		</c:if>
		<c:if test="${list[45].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[45].getNum()}
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[46].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[46].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[46].getNum()}
			</td>
		</c:if>
		<c:if test="${list[46].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[46].getNum()}
			</td>
		</c:if>
		<c:if test="${list[46].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[46].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[47].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[47].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[47].getNum()}
			</td>
		</c:if>
		<c:if test="${list[47].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[47].getNum()}
			</td>
		</c:if>
		<c:if test="${list[47].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[47].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[48].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[48].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[48].getNum()}
			</td>
		</c:if>
		<c:if test="${list[48].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[48].getNum()}
			</td>
		</c:if>
		<c:if test="${list[48].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[48].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[49].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[49].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[49].getNum()}
			</td>
		</c:if>
		<c:if test="${list[49].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[49].getNum()}
			</td>
		</c:if>
		<c:if test="${list[49].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[49].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[50].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[50].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[50].getNum()}
			</td>
		</c:if>
		<c:if test="${list[50].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[50].getNum()}
			</td>
		</c:if>
		<c:if test="${list[50].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[50].getNum()}
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
		<c:if test="${list[51].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[51].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[51].getNum()}
			</td>
		</c:if>
		<c:if test="${list[51].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[51].getNum()}
			</td>
		</c:if>
		<c:if test="${list[51].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[51].getNum()}
			</td>
		</c:if>
	<!-- 3 열 -->
		<c:if test="${list[52].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[52].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[52].getNum()}
			</td>
		</c:if>
		<c:if test="${list[52].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[52].getNum()}
			</td>
		</c:if>
		<c:if test="${list[52].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[52].getNum()}
			</td>
		</c:if>
	<!-- 4 열 -->
		<c:if test="${list[53].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[53].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[53].getNum()}
			</td>
		</c:if>
		<c:if test="${list[53].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[53].getNum()}
			</td>
		</c:if>
		<c:if test="${list[53].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[53].getNum()}
			</td>
		</c:if>
	<!-- 5 열 -->
			<td width="50px" height="50px" id="empty">
	<!-- 6 열 -->
		<c:if test="${list[54].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[54].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[54].getNum()}
			</td>
		</c:if>
		<c:if test="${list[54].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[54].getNum()}
			</td>
		</c:if>
		<c:if test="${list[54].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[54].getNum()}
			</td>
		</c:if>
	<!-- 7 열 -->
		<c:if test="${list[55].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[55].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[55].getNum()}
			</td>
		</c:if>
		<c:if test="${list[55].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[55].getNum()}
			</td>
		</c:if>
		<c:if test="${list[55].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[55].getNum()}
			</td>
		</c:if>
	<!-- 8 열 -->
		<c:if test="${list[56].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[56].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[56].getNum()}
			</td>
		</c:if>
		<c:if test="${list[56].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[56].getNum()}
			</td>
		</c:if>
		<c:if test="${list[56].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[56].getNum()}
			</td>
		</c:if>
	<!-- 9 열 -->
		<c:if test="${list[57].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[57].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[57].getNum()}
			</td>
		</c:if>
		<c:if test="${list[57].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[57].getNum()}
			</td>
		</c:if>
		<c:if test="${list[57].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[57].getNum()}
			</td>
		</c:if>
	<!-- 10 열 -->
		<c:if test="${list[58].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[58].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[58].getNum()}
			</td>
		</c:if>
		<c:if test="${list[58].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[58].getNum()}
			</td>
		</c:if>
		<c:if test="${list[58].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[58].getNum()}
			</td>
		</c:if>
	<!-- 11 열 -->
		<c:if test="${list[59].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[59].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[59].getNum()}
			</td>
		</c:if>
		<c:if test="${list[59].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[59].getNum()}
			</td>
		</c:if>
		<c:if test="${list[59].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[59].getNum()}
			</td>
		</c:if>
	<!-- 12 열 -->
			<td width="50px" height="50px" id="empty">
			</td>
	<!-- 13 열 -->
		<c:if test="${list[60].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[60].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[60].getNum()}
			</td>
		</c:if>
		<c:if test="${list[60].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[60].getNum()}
			</td>
		</c:if>
		<c:if test="${list[60].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[60].getNum()}
			</td>
		</c:if>
	<!-- 14 열 -->
		<c:if test="${list[61].getState()==0}">
			<td width="50px" height="50px" id="off" onclick="window.open('insert?num=${list[61].getNum()}', 'insert', 'width=337px, height=361px, left=500, top=150'); return false;">
				${list[61].getNum()}
			</td>
		</c:if>
		<c:if test="${list[61].getState()==1}">
			<td width="50px" height="50px" id="onM" onclick="location.href='####'" >
				${list[61].getNum()}
			</td>
		</c:if>
		<c:if test="${list[61].getState()==2}">
			<td width="50px" height="50px" id="onW" onclick="location.href='####'" >
				${list[61].getNum()}
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

</div>
</body>
<div style="border-top: 5px solid #E4E4E4; width: 910px; margin-top: 40px; padding-top: 20px">
	<footer>
        <span>
       <img alt="Kosta 도서관" src="/resources/images/kostaGray.png" width="230"/>
					<div id="bottom-text">
					
					<a href="/userLibrary/libInfo/intro" style="color: blue;">도서관 소개</a>&nbsp; | &nbsp;
					<a href="/userLibrary/libInfo/map" style="color: blue;">찾아오시는 길</a>&nbsp; | &nbsp;
					<a href="/userLibrary/using/time" style="color: blue;">이용시간</a>&nbsp; | &nbsp;
					<a href="/userLibrary/using/m_info" style="color: blue;">회원안내</a>
					<br>경기도 성남시 분당구 삼평동 682  유스페이스2 8층 Kosta  전화 : 070-5039-5803,5807<br>
					Copyright Seongnam Kosta Children's Library. All Right Reserved.</div></span>
    </footer>
    </div>
</html>
