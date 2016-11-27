<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>join</title>

<script>
$(document).ready(function(){
	/* 메세지로만 암호일치여부확인 */
	$('#pwd').keyup(function(){
		$('#check').text('');
	});
	$('#repwd').keyup(function(){
		if($('#pwd').val()==$('#repwd').val()){
			$('#check').text('');
		    $('#check').html("암호가 동일합니다.");
		} else {
		    $('#check').text('');
		    $('#check').html("암호가 다릅니다. 다시 입력해주세요.");
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
	<c:url value="/j_spring_security_check" var="login"></c:url>
	<table class="signtable1" width="755" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tbody>
			<tr>
				<td><img src="/resources/images/login/login_11.gif" width="755"
					height="28"></td>
			</tr>
			<tr>
				<td height="90" background="/resources/images/login/login_12.gif">
				<table class="signtable1"
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
				<td height="15" background="/resources/images/login/login_12.gif"></td>
			</tr>
				<td height="100" background="/resources/images/login/login_12.gif"
					align="left">
					<form role="form" method="post">
					<table class="signtable">
						<tbody>
							<tr>
								<td><img src="/resources/images/login/login_71.png" width="100" height="23">&nbsp;&nbsp;</td>
								<td><input type="text" id="id" name="id" placeholder="최대 12자 영문/숫자" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
								<td>&nbsp;<button class="comfirmbtn" id="result" value="ID중복확인" style="padding-top: 5px">ID중복확인</button></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_72.png" width="100" height="23"></td>
								<td><input type="password" id="pwd" name="pwd" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_73.png" width="100" height="23" ></td>
								<td><input type="password" id="repwd" name="repwd" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
								<td><font id="check" color="red"></font></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_74.png" width="100" height="23" ></td>
								<td><input type="text" id="name" name="name" placeholder="홍길동" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_75.png" width="100" height="23" ></td>
								<td><input type="text" id="birth" name="birth" tabindex="1" size="23" 
								style="text-align: center; font-size: 13px; height: 25px; IME-MODE:disabled; text-align: center;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" ></td>
								<td><img alt="" src="/resources/images/login/login_56.png" height="33" onClick="datePicker(event,'birth')">
								</td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_76.png" width="100" height="23"></td>
								<td>
								<img alt="남자" height="27px" src="/resources/images/login/login_52.png">
								 <input type="radio" name="gender" value="남" checked="checked" style="width: 18px; margin-top: 5px">
								 &nbsp;
								 <img alt="여자" height="27px" src="/resources/images/login/login_53.png">
								<input type="radio" name="gender" value="여" style="width: 18px; margin-top: 5px" >
								</td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_77.png" width="100" height="23" size="27"></td>
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
								&nbsp;-&nbsp;
								<input type='text'  
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style='IME-MODE:disabled; text-align: center;'  
              					size="2"
              					name="phone2" 
              					pattern=".{3,4}" 
              					maxlength="4"> 
              					&nbsp;-&nbsp;
								<input type='text'  
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style='IME-MODE:disabled; text-align: center;'  
              					size="2" 
              					name="phone3" 
              					pattern=".{3,4}" 
              					maxlength="4">
								</td>
								<!-- - onkeypress : 키보드가 눌러지고 난 후의 이벤트를 감지한다. 
    								- event.keyCode : 키보드(?)의 값이 48과 57사이일때만 반응한다.(숫자) 
                            						   숫자만 입력가능하게 처리할때가 많이 사용되어 진다. 
                           							   이런경우, 기냥 원천봉쇄하라!! 깔끔하게!! 
    								- IME-MODE:disabled : 입력모드의 디폴트가 영문이 되도록 처리.  -->
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_79.png" width="100" height="23" ></td>
								<td><input type="email" id="email" name="email" placeholder="aaaaa@naver.com" required size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_790.png" width="100" height="23"></td>
								<td><input type="text" id="address" name="address" placeholder="서울" required size="23" style="text-align: center; font-size: 13px; height: 25px"></td>
							</tr>
							<tr>
								<td><img src="/resources/images/login/login_791.png" width="100" height="23"></td>
								<td>
								<img alt="정상" height="27px" src="/resources/images/login/login_54.png">
								<input type="radio" name="handicap" checked="checked" value="1" style="width: 18px; margin-top: 5px">&nbsp;
								<img alt="장애인" height="27px" src="/resources/images/login/login_55.png">
								<input type="radio" name="handicap" value="-1" style="width: 18px; margin-top: 5px">
								</td>
							</tr>
		 
						</tbody>
					</table>
				</td>
			
			<tr>
				<td height="20" background="/resources/images/login/login_12.gif"></td>
			</tr>

			<tr>
				<td background="/resources/images/login/login_12.gif"><table
						width="0" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td height="60" align="center" bgcolor="#EEEEEE" style="border-radius: 10px" width="605">
									<a href="/userLibrary/member/join">
									<button class="signbtn" type="submit" id="submit" value="가입하기">가입하기</button></a>

									<a href="/userLibrary/member/join">
									<button class="signbtn" onClick="location.href='/'">돌아가기</button></a>
								</td>
							</tr>
						</tbody>
					</table></td>
					</form>
			</tr>
			<tr>
				<td height="15" background="/resources/images/login/login_12.gif"></td>
			</tr>
			<td background="/resources/images/login/login_12.gif" height="30"
				align="center"><img src="/resources/images/login/login_21.gif"
				width="635" height="18"></td>
			<tr>
				<td background="/resources/images/login/login_12.gif"><img src="/resources/images/login/login_44.gif" width="755"
					height="30"></td>
			</tr>
		</tbody>
	</table><br><br>


</body>
</html>