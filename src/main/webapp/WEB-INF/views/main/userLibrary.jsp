<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>

   <!-- 왼쪽 256 , 센터 512 , 오른쪽 256 -->
   <div id="userLibrary">

      <!-- 좌측 공간 시작!!!!!!!!!!!!!!!!!!!!!! -->
      <div id="mainleft">
      <!-- 슬라이드 시작 -->
         <div id="wrap">
            <div id="main_bn">
               <li class="li-img"><a href="/"><img src="/resources/images/image_1.jpg" alt="" /></a></li>
               <li class="li-img"><a href="/"><img src="/resources/images/image_2.jpg" alt="" /></a></li>
               <li class="li-img"><a href="/"><img src="/resources/images/image_3.jpg" alt="" /></a></li>
               <div id="main_bn_btn">
                  <li><a href="#"><img src="/resources/images/blt.png"></a></li>
                  <li><a href="#"><img src="/resources/images/blt.png"></a></li>
                  <li><a href="#"><img src="/resources/images/blt.png"></a></li>
               </div>
            </div>

         </div>
         <!-- 슬라이드 end -->
      </div>
      <!-- 좌측 div 공간 end -->


      <!-- 가운데 공간 시작!!!!!!!!!!!!!!!!!!!!  -->
      <div id="maincenter">
         <div class="mainsearch">
            <img src="/resources/images/searchIcon.png" width="100">
            <form class="searchform cf">
               <input type="text" name="" value="" onkeypress="" />
               <button onclick="">검색</button>
            </form>
         </div>
         <!-- 검색 end -->

         <div id="container">
            <ul class="tabs">
               <li class="active" rel="tab1">공지사항</li>
               <li rel="tab2">구매랭킹</li>
               <li rel="tab3">추후 결정될 메뉴</li>
            </ul>
            <div class="tab_container">
               <div id="tab1" class="tab_content">공지사항이 들어갈 공간입니다.</div>
               <!-- #tab1 -->
               <div id="tab2" class="tab_content">자유게시판이 들어갈 공간이지 말입니다.</div>
               <!-- #tab2 -->
               <div id="tab3" class="tab_content">추후들어갈 내용이 뭐가 올지 모릅니다. ㅋㅋㅋㅋ</div>
               <!-- #tab3 -->
            </div>
            <!-- .tab_container -->
         </div>
         <!-- #container -->

      </div>
      <!-- 가운데 div 공간 end -->
      <!-- 오른쪽 공간 시작!!!!!!!!!!!! -->
      <div id="mainright">
      	 <security:authorize access="isAnonymous()">
         <div class="loginForm">
         	<c:url value="/j_spring_security_check" var="login"></c:url>
            <form action="${login}" method="post">
               <div class="box">
                  <input type="text" name="j_username" class="iText" placeholder="아이디"> <br>
                  <input type="password" name="j_password" class="iText" placeholder="비밀번호"> <br>
                  <p>
                     <span class="llogbottom"><a href="/userLibrary/member/join">회원가입</a></span> 
                     <span class="rlogbottom"> 
                     <a href="/userLibrary/member/findID">아이디 찾기</a>&nbsp;|&nbsp;
                     <a href="/userLibrary/member/findPassword">비밀번호 찾기</a>
                     </span>
                  </p>
               </div>
               <input type="submit" value="로그인" class="loginBtn">
            </form>
         </div>
         <!-- login form end -->
         </security:authorize>
         <security:authorize access="isAuthenticated()">
			<!-- 로그인 된 페이지 여기에 작성 -->
         </security:authorize>
      </div>
      <!-- 우측 div 공간 end -->

   </div>
   <script type="text/javascript">
      var logout = '${logout}';
      var leave = '${leave}';
      var join = '${join}';

      if (logout == 'logout') {
         alert("로그아웃 완료");
      }

      if (leave == 'leave') {
         alert("회원탈퇴 완료")
      }
      
      if (join == 'join') {
          alert("회원가입 완료")
      }
   </script>
</body>
</html>