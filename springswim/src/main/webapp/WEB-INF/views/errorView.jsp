<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
    
<title>로그인</title>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" />
</head>
<body>
<!-- 모든 화면에 포함시키는 부분 -->
    <%@include file="/WEB-INF/inc/top.jsp" %>
    
     <div class="container text-center" id="grid1">
    <div class="row">
      <div class="col" style= "border-top: 50px; border-bottom: 50px;
          margin-top: 100px; margin-bottom: 50px; font-size: 40px;color:yellow;" >
          삐빅! 에러입니다!
      </div>
      
    </div>
  </div>

</body>
</html>