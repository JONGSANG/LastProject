<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	var success='${success}';
	var mailGo='${mailGo}';
	
    if(success=='success'){
    	alert("비밀번호 수정 완료");
    }
    if(mailGo=='mailGo'){
    	alert("메일발송 완료")
    }
</script>
</head> 
<body>
	<div class="text-left">
		<img src="/resources/images/adminTel.png"  width="600px" >
		<img src="/resources/images/bookbum.png" width="300px">
	</div>
</body>
</html>