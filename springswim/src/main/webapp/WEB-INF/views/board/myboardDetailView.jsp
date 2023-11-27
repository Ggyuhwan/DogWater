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
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>

	<div class="container text-center" id="grid1">
		<div class="row">
			<div class="col"
				style="border-top: 50px; border-bottom: 50px; margin-top: 100px; margin-bottom: 50px; font-size: 40px; color: #F8F8F8;">
				운동게시판</div>
		</div>
	</div>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container" style="margin-top: 100px;">
			<!-- Contact Section Form-->
			<div class="row justify-content-center" style="margin-bottom: 50px;">
				<div class="col-lg-8 col-xl-7">
					<!-- title input-->
					<div class="mb-3">
						<label for="title" style="color: #EBE4D1; font-size: 20px">제목</label>
						<h6 id="title" style="color: white; font-size: 20px">${board.boardTitle }</h6>
					</div>
					<div class="mb-3">
						<label for="name" style="color: #EBE4D1; font-size: 20px">작성자</label>
						<h6 id="name" style="color: white; font-size: 20px">${board.memNm }</h6>
					</div>
					<div class="mb-3">
						<label for="date" style="color: #EBE4D1; font-size: 20px">작성일</label>
						<h6 id="date" style="color: white; font-size: 20px">${board.createDate }</h6>
						<label for="date2" style="color: #EBE4D1; font-size: 20px">마지막수정일</label>
						<h6 id="date2" style="color: white; font-size: 20px">${board.updateDate }</h6>
					</div>
					<!-- content input-->
					<div class="mb-3">
						<textarea class="form-control bg-white" style="height: 20rem"
							readonly>${board.boardContent }</textarea>
					</div>
				</div>
			</div>	
		</div>
		
</body>
</html>