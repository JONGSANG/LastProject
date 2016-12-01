<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>개인정보</title>
</head>
<body>

	<section>
		<div id="word">
			<font style="font-size: 40px">개인정보</font>
		</div>
		<div id="link">
			<div id="link34">
				<a href="/">home ></a><a href="#">내 정보 >&nbsp;</a>
			</div>
			<b>개인정보</b>
		</div>
	</section>
	<div id="insidebody">
	<div id="modicenter">
	<div id="modibox">
	<table class="moditable">
						<input type="hidden" id="id" name="id" value="${id}">
							<tr>
								<td id="td1" style="border-radius: 5px 0 0 0"><img src="/resources/images/login/login_71.png" width="100" height="23"></td>
								<td><input type="text" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px; " value="${MemberVO.id}"  readonly="readonly"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_74.png" width="100" height="23" ></td>
								<td><input type="text" value="${MemberVO.name}" readonly="readonly"size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_75.png" width="100" height="23" ></td>
								<td><input type="text" size="23" 
								style="text-align: center; font-size: 13px; height: 25px; text-align: center; width : 176px; " value="${MemberVO.birth}" readonly="readonly" ></td>
								
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_76.png" width="100" height="23"></td>
							<c:if test="${MemberVO.gender=='1'}">
								<td style="padding-top: 5px; padding-left: 35px">
								<img alt="남자" height="27px" src="/resources/images/login/login_52.png">
								 <input type="radio" value="1"  onfocus="setRadioCl(event)" checked style="width: 18px; margin-top: 5px">
								 &nbsp;
								 <img alt="여자" height="27px" src="/resources/images/login/login_53.png">
								<input type="radio" value="2" onfocus="setRadioCl(event)" style="width: 18px; margin-top: 5px" >
								</td>
							</c:if>
							<c:if test="${MemberVO.gender=='2'}">
							<td style="padding-top: 5px; padding-left: 35px">
								<img alt="남자" height="27px" src="/resources/images/login/login_52.png">
								 <input type="radio" value="1" onfocus="setRadioCl(event)" style="width: 18px; margin-top: 5px">
								 &nbsp;
								 <img alt="여자" height="27px" src="/resources/images/login/login_53.png">
								<input type="radio" value="2"  onfocus="setRadioCl(event)" checked style="width: 18px; margin-top: 5px" >
								</td>
							</c:if>	
								
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_77.png" width="100" height="23" size="27"></td>
								<td><input type="text" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px; "value="${MemberVO.job}" readonly="readonly""></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_78.png" width="100" height="23"></td>
								<td>
								<input type="text" size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;" value="${MemberVO.phone}" readonly="readonly"">
								</td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_79.png" width="100" height="23" ></td>
								<td><input type="email" required size="23" style="text-align: center; font-size: 13px; width : 176px; height: 25px" value="${MemberVO.email}"  readonly="readonly"></td>
							</tr>
							<tr>
								<td id="td1"><img src="/resources/images/login/login_790.png" width="100" height="23"></td>
								<td><input type="text" id="address" name="address" required size="23" style="text-align: center; font-size: 13px; height: 25px; width : 176px;" value="${MemberVO.address}"  readonly="readonly"></td>
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
							<td colspan="2" style="padding-top: 20px; padding-bottom: 10px; padding-left: 20px" align="center">
							<a href="/userLibrary/myInfo/modifyCheck"><button value="회원정보수정" onclick="location.href='/userLibrary/myInfo/modifyCheck'">회원정보수정</button></a>
							<a href = "/userLibrary/myInfo/leave"><button value="회원탈퇴" onclick="location.href='/userLibrary/myInfo/leave'">회원탈퇴</button></a>
							</td>
							</tr>
					</table>
			
			</div>
			</div>
			
		</div>
		
		</div>
</body>
</html>