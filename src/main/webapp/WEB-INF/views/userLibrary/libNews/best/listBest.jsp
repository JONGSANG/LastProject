<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<table border="2" width="800">
		<tr>
			<th width="100">분야</th>
			<td width="200">문학</td>
			<td width="200">컴퓨터</td>
			<td width="200">정치/사회</td>
		</tr>
		<tr>
			<th>사진</th>
			<td>
				<img src="/resources/book_img/${mun.bNo}.jpg" width="100">
			</td>
			<td>
				<img src="/resources/book_img/${com.bNo}.jpg" width="100">
			</td>
			<td>
				<img src="/resources/book_img/${soc.bNo}.jpg" width="100">
			</td>		
		</tr>
		<tr>
			<th>책 명</th>
			<td>${mun.bTitle}</td>
			<td>${com.bTitle}</td>
			<td>${soc.bTitle}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td>${mun.bWriter}</td>
			<td>${com.bWriter}</td>
			<td>${soc.bWriter}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td>${mun.bCompany}</td>
			<td>${com.bCompany}</td>
			<td>${soc.bCompany}</td>
		</tr>
		<tr>
			<th>대출횟수</th>
			<td>${mun.brent_cnt}</td>
			<td>${com.brent_cnt}</td>
			<td>${soc.brent_cnt}</td>
		</tr>		
	</table>

<hr>

	<table border="2" width="800">
		<tr>
			<th width="100">분야</th>
			<td width="200">문학</td>
			<td width="200">컴퓨터</td>
			<td width="200">정치/사회</td>
		</tr>
		<tr>
			<th>사진</th>
			<td>
				<img src="/resources/book_img/${mun.bNo}.jpg" width="100">
			</td>
			<td>
				<img src="/resources/book_img/${com.bNo}.jpg" width="100">
			</td>
			<td>
				<img src="/resources/book_img/${soc.bNo}.jpg" width="100">
			</td>		
		</tr>
		<tr>
			<th>책 명</th>
			<td>${mun.bTitle}</td>
			<td>${com.bTitle}</td>
			<td>${soc.bTitle}</td>
		</tr>
		<tr>
			<th>저자명</th>
			<td>${mun.bWriter}</td>
			<td>${com.bWriter}</td>
			<td>${soc.bWriter}</td>
		</tr>
		<tr>
			<th>대출횟수</th>
			<td>${mun.brent_cnt}</td>
			<td>${com.brent_cnt}</td>
			<td>${soc.brent_cnt}</td>
		</tr>		
	</table>

</body>
</html>