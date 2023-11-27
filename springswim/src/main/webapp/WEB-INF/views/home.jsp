<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

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
<title>Home</title>
</head>
<body>
	<!-- 모든 화면에 포함시키는 부분 -->
	<%@include file="/WEB-INF/inc/top.jsp"%>


	<div class="container text-center" id="grid1">
		<div class="row">
			<div class="col"
				style="border-top: 50px; border-bottom: 50px; margin-top: 100px; margin-bottom: 50px; font-size: 40px;
				color: #F8F8F8;">
				운동량</div>
		</div>
	</div>

	<!-- 선택창 -->
	<div class="container text-center">
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<select class="form-select" aria-label="Default select example"
					style="color: #F8F8F8; background-color: #212529;" id="selectBox">
					<option selected>운동 선택</option>
					<option value="1">초급1</option>
					<option value="2">중급1</option>
					<option value="3">고급1</option>
				</select>
			</div>
			<div class="col"></div>
		</div>
	</div>
	<div>
		<!-- <table class="table table-dark"> -->
		<table class="table table-dark" style="width: 90%; margin: auto;">
			<thead>
				<tr>

					<th scope="col">종류</th>
					<th scope="col">영법</th>
					<th scope="col">내용</th>
					<th scope="col">거리</th>
					<th scope="col">세트</th>
					<th scope="col">싸이클</th>
				</tr>
			</thead>
			<tbody id="a01" style='display: none;'>

				<c:forEach items="${mainList }" var="mainList">
					<tr class="table-active" style="font-size: 17px">

						<td>${mainList.skil }</td>
						<td>${mainList.stroke }</td>
						<td>${mainList.detail }</td>
						<td>${mainList.distance }</td>
						<td>${mainList.ssat }</td>
						<td>${mainList.cyc }</td>
						<c:set var="result" value="${mainList.distance * mainList.ssat}" />
						<c:set var="totalResult" value="${totalResult + result}" />
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3"></td>
					<td>Total</td>
					<td>${totalResult}</td>
					<td></td>
				</tr>

			</tbody>
			<tbody id="b01" style='display: none;'>

				<c:forEach items="${mainList2 }" var="mainList2">
					<tr class="table-active" style="font-size: 17px">

						<td>${mainList2.skil }</td>
						<td>${mainList2.stroke }</td>
						<td>${mainList2.detail }</td>
						<td>${mainList2.distance }</td>
						<td>${mainList2.ssat }</td>
						<td>${mainList2.cyc }</td>
						<c:set var="result" value="${mainList2.distance * mainList2.ssat}" />
						<c:set var="totalResult" value="${totalResult + result}" />
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3"></td>
					<td>Total</td>
					<td>${totalResult}</td>
					<td></td>
				</tr>
			</tbody>
			<tbody id="c01" style='display: none;'>

				<c:forEach items="${mainList3 }" var="mainList3">
					<tr class="table-active" style="font-size: 17px">

						<td>${mainList3.skil }</td>
						<td>${mainList3.stroke }</td>
						<td>${mainList3.detail }</td>
						<td>${mainList3.distance }</td>
						<td>${mainList3.ssat }</td>
						<td>${mainList3.cyc }</td>
						<c:set var="result" value="${mainList3.distance * mainList3.ssat}" />
						<c:set var="totalResult" value="${totalResult + result}" />
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3"></td>
					<td>Total</td>
					<td>${totalResult}</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	<script>
		$(document).ready(function() {
			console.log()
			$('#selectBox').change(function() {
				var result = $('#selectBox option:selected').val();
				/* 초급1을 선택시 초급테이블 show 나머지 테이블 hide */
				if (result == '1') {
					$('#a01').show();
					$('#b01').hide();
					$('#c01').hide();
					/* 엘즈 중급1테이블 show 나머지 테이블 hide */
				} else if (result == '2') {
					$('#a01').hide();
					$('#b01').show();
					$('#c01').hide();
				} else if (result == '3') {
					$('#a01').hide();
					$('#b01').hide();
					$('#c01').show();
				}
			});
		});
	</script>
</body>
</html>
