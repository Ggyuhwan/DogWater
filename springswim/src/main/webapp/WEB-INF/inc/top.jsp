<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
   <!-- Font Awesome icons (free version)-->
   <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
   <!-- Google fonts-->
   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
   <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
   <!-- Core theme CSS (includes Bootstrap)-->

<!-- Navigation -->
<nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid" style="margin-left: 50px;">
    <a class="navbar-brand" href="#" style="font-size: 50px; font-weight: 700; margin: auto;">Water Dog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
      aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar"
      aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
      									<!-- 세션 로그인시 **님 표현  -->
		<c:if test='${sessionScope.login != null }'>     								
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">${sessionScope.login.memId } 님</h5>
        </c:if> 
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home">홈</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/boardView">기록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/record">수영장 검색</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/freeboardView">자유게시판</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              내정보
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/myBoardView">내운동 동향</a></li>
              <li><a class="dropdown-item" href="#">내기록실</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">사진첩</a></li>
            </ul>
          </li>
          <li class="nav-item">
          					<!-- 로그아웃 ㄱㄱ -->
          	<c:if test='${sessionScope.login != null }'> 
            	<a class="nav-link" href="<%=request.getContextPath()%>/logoutDo">로그아웃</a>
            </c:if>
          </li>
        </ul>

      </div>
    </div>
  </div>
</nav>