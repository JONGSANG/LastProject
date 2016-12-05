<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>개인정보 수정</title>
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
		    $('#check').html("암호가 동일합니다.");
		} else {
		    $('#check').text('');
		    $('#check').html("암호가 다릅니다. 다시 입력해주세요.");
		}
	});
	
	/* 수정하기 클릭시 */
	var form = $("form[role='form']");
	$('#submit').click(function(){
		if($('#pwd').val()==$('#repwd').val()){
			form.submit();
		} else {
		    alert("입력하신 두개의 암호가 다릅니다. 다시 입력해주세요.")
		    $('#pwd').focus();
		    $('#pwd').val('');
		    $('#pwd').val('');
		    return false;
		}
	})
	
});

//*************** 라디오 버튼용 시작 ***************//
function setRadioCl(e){ 
    var srcEl = getSrc(e);
    var ra = srcEl.form[srcEl.name]
    for(var i=0;i<ra.length;i++){
        if(ra[i].checked) ra[i].onpropertychange = function(e){getSrc(e).click()}
        else ra[i].onclick = function(){return false};
    }
}
function getSrc(e)
{
    return e? e.target || e.srcElement : event.srcElement;
}
//*************** 라디오 버튼용 끝   ***************//
</script>
</head>
<body>
		<section>
		<div id="word">
			<font style="font-size: 40px">개인정보 수정</font>
		</div>
		<div id="link">
			<div id="link37">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>개인정보 수정</b>
		</div>
	</section>
	<div id="insidebody">
	<div id="modicenter">
	<div id="modibox">
<p><img src="/resources/images/word/modiyintop.png" ></p>
	<form role="form" method="post">
	<table class="moditable">
						<tbody>
						<input type="hidden" id="id" name="id" value="${MemberVO.id}">
							<tr>
								<td id="td1" style="border-radius: 5px 0 0 0"><img src="/resources/images/login/login_72.png" width="100" height="23"></td>
								<td><input type="password" id="pwd" name="pwd" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_73.png" width="100" height="23" ></td>
								<td><input type="password" id="repwd" name="repwd" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
								<td><font id="check" color="red" style="position: absolute; padding-left: 30px"></font></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_744.png" width="100" height="23" ></td>
								<td><input type="text" id="name" name="name" value="${MemberVO.name}" readonly="readonly" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_755.png" width="100" height="23" ></td>
								<td><input type="text" id="birth" name="birth" tabindex="1" size="23" 
								style="text-align: center; font-size: 13px; height: 25px; text-align: center; width : 176px; " value="${MemberVO.birth}" readonly="readonly" ></td>
								
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_766.png" width="100" height="23"></td>
							<c:if test="${MemberVO.gender=='1'}">
								<td style="padding-top: 5px; padding-left: 35px">
								<img alt="남자" height="27px" src="/resources/images/login/login_52.png">
								 <input type="radio" name="gender" value="1"  onfocus="setRadioCl(event)" checked style="width: 18px; margin-top: 5px">
								 &nbsp;
								 <img alt="여자" height="27px" src="/resources/images/login/login_53.png">
								<input type="radio" name="gender" value="2" onfocus="setRadioCl(event)" style="width: 18px; margin-top: 5px" >
								</td>
							</c:if>
							<c:if test="${MemberVO.gender=='2'}">
							<td style="padding-top: 5px; padding-left: 35px">
								<img alt="남자" height="27px" src="/resources/images/login/login_52.png">
								 <input type="radio" name="gender" value="1" onfocus="setRadioCl(event)" style="width: 18px; margin-top: 5px">
								 &nbsp;
								 <img alt="여자" height="27px" src="/resources/images/login/login_53.png">
								<input type="radio" name="gender" value="2"  onfocus="setRadioCl(event)" checked style="width: 18px; margin-top: 5px" >
								</td>
							</c:if>	
								
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_77.png" width="100" height="23" size="27"></td>
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
								<td id="td1"><img src="/resources/images/login/login_78.png" width="100" height="23"></td>
								<td><select name="phone1">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								-
								<input type='text'  
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style="IME-MODE:disabled; text-align: center; height: 23px"  
              					size="2"
              					name="phone2" 
              					pattern=".{3,4}" 
              					maxlength="4"> 
              					-
              					<input type='text'  
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style="IME-MODE:disabled; text-align: center; height: 23px"  
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
								<td id="td1"><img src="/resources/images/login/login_79.png" width="100" height="23" ></td>
								<td><input type="email" id="email" name="email" placeholder="aaaaa@naver.com" required size="23" style="text-align: center; font-size: 13px; width : 176px; height: 25px" value="${MemberVO.email}"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_790.png" width="100" height="23"></td>
								<td><input type="text" id="address" name="address" placeholder="서울" required size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;" value="${MemberVO.address}"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_791.png" width="100" height="23"></td>
								<td style="padding-top: 5px; padding-left: 45px">
								<img alt="정상" height="27px" src="/resources/images/login/login_54.png">
								<input type="radio" name="handicap" checked="checked" value="1" style="width: 18px; margin-top: 5px">&nbsp;
								<img alt="장애인" height="27px" src="/resources/images/login/login_55.png">
								<input type="radio" name="handicap" value="-1" style="width: 18px; margin-top: 5px">
								</td>
							</tr>
		 					<tr>
								<td id="td1" style="border-radius: 0 0 0 5px"><img src="/resources/images/login/login_792.png" width="100" height="23" ></td>
								<c:if test="${MemberVO.role=='ROLE_SEMIUSER'}">
								<td><input type="text" value="준회원" readonly="readonly" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
								</c:if>
								<c:if test="${MemberVO.role=='ROLE_USER'}">
								<td><input type="text" value="정회원" readonly="readonly" tabindex="1" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
								</c:if>
							</tr>
							<tr>
							<td></td>
							<td style="padding-top: 20px; padding-bottom: 10px"><button type="submit" id="submit" value="수정하기">수정하기</button></td>
							</tr>
						</tbody>
					</table>
			</form>
			</div>
			</div>
		</div>
</body>
</html>