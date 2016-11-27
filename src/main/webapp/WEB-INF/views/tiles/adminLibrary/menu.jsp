<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/resources/images/HomeIcon1.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>관리자</p>
          오늘 하루도 화이팅!!!
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="treeview">
          <a href='#'>
            <i class="fa fa-files-o"></i>
            <span>정보관리</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/adminLibrary/adminInfo/m_list"><i class="fa fa-circle-o"></i> 회원정보관리</a></li>
            <li><a href="/adminLibrary/adminInfo/adminCheck"><i class="fa fa-circle-o"></i> 관리자비밀번호수정</a></li>
            <li><a href="/adminLibrary/adminInfo/a_list"><i class="fa fa-circle-o"></i> 관리자정보관리</a></li>
            <li><a href="/adminLibrary/adminInfo/addAdmin"><i class="fa fa-circle-o"></i> 관리자계정추가</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-user"></i>
            <span>이용자관리</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 연체 관리</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 단체 메일발송</a></li>
          </ul>
        </li>
         <li>
          <a href="pages/widgets.html">
            <i class="fa fa-th"></i> <span>열람실 관리</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i> <span>도서관리</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/adminLibrary/adminBook/rentBook/rent"><i class="fa fa-circle-o"></i> 도서 대출/반납</a></li>
            <li><a href="/adminLibrary/adminBook/register/index"><i class="fa fa-circle-o"></i> 신규도서 등록</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 도서 폐기 등록</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 서고 도서 목록</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 비치 도서 목록</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-star"></i> <span>서비스</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/adminLibrary/adminService/a_list"><i class="fa fa-circle-o"></i> 방과후 학교</a></li>
            <li><a href="/adminLibrary/adminService/c_list"><i class="fa fa-circle-o"></i> 문화 행사</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> 도서 배달 서비스</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-leaf"></i> <span>기타</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> 민원 목록 조회</a></li>
            <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> 일정 관리</a></li>
            <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> 추천 도서 등록</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>