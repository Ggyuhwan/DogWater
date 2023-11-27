<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

<title>로그인</title>
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" />
</head>
<body>
	<!-- 모든 화면에 포함시키는 부분 -->
	<%-- <%@include file="/WEB-INF/inc/top.jsp" %> --%>
	<div id="title1"
		style="font-size: 50px; font-weight: 700; margin: auto; padding-top: 50px;">
		Water Dog</div>
	<div class="login-wrapper">
		<h2
			style="margin-top: 50px; margin-bottom: 50px; text-align: center; font-size: 30px;">Login</h2>
		<form method="post"
			action="${pageContext.request.contextPath}/loginDo" id="login-form">
			<!--쿠키에 key값 이용 value가져온다  -->
			<input type="text" name="memId" placeholder="ID"
				value="${cookie.rememberId.value }" /> <input type="password"
				name="memPw" placeholder="Password"> <label
				for="remember-check"> <input type="checkbox" id="remember"
				${cookie.rememberId.value == null ? "": "checked"} />아이디 저장하기
			</label> 
			
			<input class="login_btn" type="submit" value="Login">
			<!-- input 태그안에서 경로이동 -->
			<input type="button" class="login_btn"
				onclick="location.href=
            '${pageContext.request.contextPath}/registView'"
				value="회원가입">
		</form>
	</div>
</body>
</html>