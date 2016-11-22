<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>대출 내역</title>
<script src="//code.jquery.com/jquery-3.1.0.min.js"></script>
<script>
$(document).ready(function(){
	/* 메세지로만 암호일치여부확인 */
	$('#pwd').keyup(function(){
		$('#check').text('');
	});
	$('#repwd').keyup(function(){
		if($('#pwd').val()==$('#repwd').val()){
			$('#check').text('');
		    $('#check').html("암호가 동일합니다");
		} else {
		    $('#check').text('');
		    $('#check').html("암호가 다릅니다. 다시 입력해주세요");
		}
	});
	
	/* 수정하기 클릭시 */
	var form = $("form[role='form']");
	$('#submit').click(function(){
		if($('#pwd').val()==$('#repwd').val()){
			form.submit();
		} else {
		    alert("입력하신 두개의 암호가 다릅니다. 다시 입력해주세요")
		    $('#pwd').focus();
		    $('#pwd').val('');
		    $('#pwd').val('');
		}
	})
	
});
</script>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">대출 내역</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>대출 내역</b>
		</div>
	</section>
<p>파란색 항목은 수정 불가
<form role="form" method="post">
		<input type="hidden" id="id" name="id" value="${MemberVO.id}">
		<label for="pwd">비밀번호</label>
		<input type="password" id="pwd" name="pwd" placeholder="최대 12자 영문/숫자" maxlength="12" required><br>
		<label for="repwd">비밀번호 확인</label>
		<input type="password" id="repwd" name="repwd" placeholder="비밀번호 확인" maxlength="12" required>
		<font id="check" color="red"></font><br>
		<label for="name"><font color="blue">이름</font></label>
		<input type="text" id="name" name="name" value="${MemberVO.name}" readonly="readonly"><br>
		<label for="birth"><font color="blue">생년월일</font></label>
		<input type="date" id="birth" name="birth" value="${MemberVO.birth}" readonly="readonly"><br>
		<label for="gender"><font color="blue">성별</font></label>
		<c:if test="${MemberVO.gender=='남'}">
			남성
		</c:if>
		<c:if test="${MemberVO.gender=='여'}">
			여성
		</c:if><br>
		<label for="job">직업</label>
		<select name="job">
			<option>학생</option>
			<option>직장인</option>
			<option>주부</option>
			<option>백수</option>
			<option>기타</option>
		</select><br>
		<label for="phone">휴대전화번호</label>
		<select name="phone1">
			<option value="010" selected>010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
		</select> - 
		<input type="number" name="phone2" pattern=".{3,4}" placeholder="3~4자리 숫자" maxlength="4" required> - 
		<input type="number" name="phone3" pattern=".{4,4}" placeholder="4자리 숫자" maxlength="4" required><br>
		<label for="email">이메일</label>
		<input type="email" id="email" name="email" value="${MemberVO.email}" required><br>
		<label for="address">주소</label>
		<input type="text" id="address" name="address" placeholder="서울" value="${MemberVO.address}" required><br>
		<label for="handicap">장애여부</label>
		정상 <input type="radio" name="handicap" checked="checked" value="1">
		장애인 <input type="radio" name="handicap" value="-1"><br>
		<label for="address">회원등급</label>
		<c:if test="${MemberVO.role=='ROLE_SEMIUSER'}">
			준회원
		</c:if>
		<c:if test="${MemberVO.role=='ROLE_USER'}">
			정회원
		</c:if><br>
		<button type="submit" id="submit" value="수정하기">수정하기</button>	
	</form>
		
</body>
</html>