<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- http://parcel.logii.com/Login/Login_Form.asp  -->
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<body>
 <c:url value="/j_spring_security_check" var="login"></c:url>
<table width="755" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
  <tr>
    <td><img src="/resources/images/login/login_11.gif" width="755" height="28"></td>
  </tr>
  <tr>
    <td height="90" background="/resources/images/login/login_12.gif"><table width="407" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td rowspan="2"><img src="/resources/images/login/login_14.gif" width="168" height="63"></td>
        <td height="35">&nbsp;</td>
      </tr>
      <tr>
        <td><img src="/resources/images/login/login_17.png" width="238" height="28"></td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td background="/resources/images/login/login_12.gif" align="center"><img src="/resources/images/login/login_21.gif" width="635" height="18"></td>
  </tr>
<tr>
    <td height="30" background="/resources/images/login/login_12.gif"></td>
  </tr>
  <tr>
    <td height="100" background="/resources/images/login/login_12.gif" align="center">

	<table width="0" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
	<form action="${login}" method="post">
	  </tr></tbody></table><table cellpadding="0" cellspacing="0" border="0">
        <tbody><tr><td height="26"><img src="/resources/images/login/login_28.gif" width="70" height="23"></td>
        <td><input type="text" name="j_username" tabindex="1"></td>
        <td width="120" rowspan="2" align="right"><input type="image" src="/resources/images/login/login_25.gif" width="113" height="58" name=Submit; style="height:58px;border:0;" align="absmiddle"></td>
      </tr>
      <tr>
        <td><img src="/resources/images/login/login_31.gif" width="70" height="23"></td>
        <td><input type="password" name="j_password" tabindex="1"></td>
      </tr>

    </tbody></table></td>
  </tr>
 </form>
 <tr>
    <td height="20" background="/resources/images/login/login_12.gif"></td>
  </tr>
  
   <tr>
    <td background="/resources/images/login/login_12.gif"><table width="0" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
      <tr>
        <td height="40" align="center" bgcolor="#EEEEEE" style="border-radius: 10px" width="605">
        <a href="/userLibrary/member/join"><img src="/resources/images/login/login_80.png" width="100"></a>
       
        <a href="/userLibrary/member/findID"><img src="/resources/images/login/login_81.png" width="100"></a>
        <a href="/userLibrary/member/findPassword"><img src="/resources/images/login/login_82.png" width="100"></a>
        </td>
      </tr>
    </tbody></table></td>
  </tr>
   <tr>
    <td height="50" background="/resources/images/login/login_12.gif"></td>
  </tr>
 <td background="/resources/images/login/login_12.gif" height="30" align="center"><img src="/resources/images/login/login_21.gif" width="635" height="18"></td>
  <tr>
    <td><img src="/resources/images/login/login_44.gif" width="755" height="30"></td>
  </tr>
  <!-- <tr>
    <td height="15"><img src="/resources/images/login/login_46.gif" width="755" height="46"></td>
  </tr> -->
</tbody></table>


</body>
</html>