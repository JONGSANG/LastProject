<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	userLibrary의 main영역
	<script type="text/javascript">
	
	var logout='${logout}';
	var leave='${leave}';
	
    if(logout=='logout'){
    	alert("로그아웃 완료");
    }
    
    if(leave=='leave'){
    	alert("회원탈퇴 완료")
    }
	</script>
</body>
</html>