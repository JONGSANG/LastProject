<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
	
	/* 가입하기 클릭시 */
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
	<p>회원가입 정보는 정확하게 입력해주세요.
	<form role="form" method="post">
		<label for="id">ID</label>
		<input type="text" id="id" name="id" placeholder="최대 12자 영문/숫자" maxlength="12" autofocus required>
		<input type="button" id="result" value="ID중복확인"><br>
		<label for="pwd">비밀번호</label>
		<input type="password" id="pwd" name="pwd" placeholder="최대 12자 영문/숫자" maxlength="12" required><br>
		<label for="repwd">비밀번호 확인</label>
		<input type="password" id="repwd" name="repwd" placeholder="비밀번호 확인" maxlength="12" required>
		<font id="check" color="red"></font><br>
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="이름" required><br>
		<label for="birth">생년월일</label>
		<input type="date" id="birth" name="birth" required="required"><br>
		<label for="gender">성별</label>
		남성 <input type="radio" name="gender" value="남" checked="checked">
		여성 <input type="radio" name="gender" value="여" ><br>
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
		<input type="email" id="email" name="email" required><br>
		<label for="address">주소</label>
		<input type="text" id="address" name="address" placeholder="서울" required><br>
		<label for="handicap">장애여부</label>
		정상 <input type="radio" name="handicap" checked="checked" value="1">
		장애인 <input type="radio" name="handicap" value="-1">
		<br>
		<button type="submit" id="submit" value="가입하기">가입하기</button>
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>join</title>
</head>
<body>
	<c:url value="/j_spring_security_check" var="login"></c:url>
	<table width="755" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tbody>
			<tr>
				<td><img src="/resources/images/login/login_11.gif" width="755"
					height="28"></td>
			</tr>
			<tr>
				<td height="90" background="/resources/images/login/login_12.gif"><table
						width="407" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td rowspan="2" style="vertical-align: bottom;"><img
									src="/resources/images/login/login_51.png" 
									height="40"></td>
								<td height="35"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_50.png"
									width="238" height="23"></td>
							</tr>
						</tbody>
					</table></td>
			</tr>
			<tr>
				<td background="/resources/images/login/login_12.gif" align="left"><img
					src="/resources/images/login/login_21.gif" width="635" height="18"></td>
			</tr>
			<tr>
				<td height="30" background="/resources/images/login/login_12.gif"></td>
			</tr>
			<tr>
				<td height="100" background="/resources/images/login/login_12.gif"
					align="center">

					<table width="0" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<form role="form" method="post">
							</tr>
						</tbody>
					</table>
					<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<tr>
								<td><img src="/resources/images/login/login_71.png" width="100" height="23"></td>
								<td><input type="text" id="id" name="id" placeholder="최대 12자 영문/숫자" tabindex="1" width="20"></td>
								<td><input type="button" id="result" value="ID중복확인">
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_72.png" width="100" height="23"></td>
								<td><input type="password" id="pwd" name="pwd" tabindex="1"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_73.png" width="100" height="23"></td>
								<td><input type="password" id="repwd" name="repwd" tabindex="1"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_74.png" width="100" height="23"></td>
								<td><input type="text" id="name" name="name" tabindex="1"></td>
								<td><font id="check" color="red"></font></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_75.png" width="100" height="23"></td>
								<td><input type="date" id="birth" name="birth" tabindex="1"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_76.png" width="100" height="23"></td>
								<td>남성 <input type="radio" name="gender" value="남" checked="checked"></td>
								<td>여성 <input type="radio" name="gender" value="여" ></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_77.png" width="100" height="23"></td>
								<td><select name="job">
									<option>학생</option>
									<option>직장인</option>
									<option>주부</option>
									<option>백수</option>
									<option>기타</option>
									</select>
								</td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_78.png" width="100" height="23"></td>
								<td><select name="phone1">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								</td>
								<td> - <input type="number" name="phone2" pattern=".{3,4}" placeholder="3~4자리 숫자" maxlength="4" required> - </td>
								<td><input type="number" name="phone3" pattern=".{4,4}" placeholder="4자리 숫자" maxlength="4" required></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_79.png" width="100" height="23"></td>
								<td><input type="email" id="email" name="email" required></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_790.png" width="100" height="23"></td>
								<td><input type="text" id="address" name="address" placeholder="서울" required></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_791.png" width="100" height="23"></td>
								<td>정상 <input type="radio" name="handicap" checked="checked" value="1"></td>
								<td>장애인 <input type="radio" name="handicap" value="-1"></td>
							</tr>
		<tr>
		<td><button type="submit" id="submit" value="가입하기">가입하기</button></td>
		<td><input type="reset" value="다시쓰기"></td>
		</tr>
		 
						</tbody>
					</table>
				</td>
			</tr>
			</form>
			<tr>
				<td height="20" background="/resources/images/login/login_12.gif"></td>
			</tr>

			<tr>
				<td background="/resources/images/login/login_12.gif"><table
						width="0" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td height="40" align="center" bgcolor="#EEEEEE"
									style="border-radius: 10px" width="605"><a
									href="/userLibrary/member/join"><img
										src="/resources/images/login/login_80.png" width="100"></a>

									<a href="/userLibrary/member/findID"><img
										src="/resources/images/login/login_81.png" width="100"></a>
									<a href="/userLibrary/member/findPassword"><img
										src="/resources/images/login/login_82.png" width="100"></a>
								</td>
							</tr>
						</tbody>
					</table></td>
			</tr>
			<tr>
				<td height="50" background="/resources/images/login/login_12.gif"></td>
			</tr>
			<td background="/resources/images/login/login_12.gif" height="30"
				align="center"><img src="/resources/images/login/login_21.gif"
				width="635" height="18"></td>
			<tr>
				<td><img src="/resources/images/login/login_44.gif" width="755"
					height="30"></td>
			</tr>
			<!-- <tr>
    <td height="15"><img src="/resources/images/login/login_46.gif" width="755" height="46"></td>
  </tr> -->
		</tbody>
	</table>


</body>
</html>