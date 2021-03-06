<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="main-header">
    <!-- Logo -->
    <a href="/adminLibrary" class="logo">
    
      
      <span class="logo-mini"> <img alt="logo" src=" /resources/images/LogoBook.png" width="45px"></span>
      <span class="logo-lg"> <img alt="logo" src="/resources/images/mainlogo.png" width="200px"></span>
    </a>
      
    </a>
    <nav class="navbar">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             <img src="/resources/images/HomeIcon1.png" class="user-image" alt="User Image">
              <span class="hidden-xs">관리자</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="/resources/images/HomeIcon1.png" class="img-circle" alt="User Image">

                <p>
                  Kosta 도서관의 관리자
                  <small>Kosta Library Administrator</small>
                </p>
              </li>
              <!-- Menu Body -->
              <c:url value="/j_spring_security_logout" var="logout"></c:url>
              <li class="user-footer">
                <div class="pull-left">
                  <a href="/adminLibrary/adminInfo/adminCheck" class="btn btn-default btn-flat">비밀번호 수정</a>
                </div> 
                <div class="pull-right">
                  <a href="${logout}" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>