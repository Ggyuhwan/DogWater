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
<%@include file="/WEB-INF/inc/top.jsp" %>

  <div class="container text-center" id="grid1">
    <div class="row">
      <div class="col" style="border-top: 50px; border-bottom: 50px;
          margin-top: 100px; margin-bottom: 50px; font-size: 40px; color: #F8F8F8;">
        자유게시판 
      </div>
    </div>
  </div>
  <!-- Contact Section -->
  <section class="page-section" id="contact">
		<div class="container" style="margin-top: 30px;">

			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>최초작성일</th>
						<th>마지막수정일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 데이터의 수만큼 반복되는 부분 -->
					<c:forEach items="${freeboardList }" var="board">
						<tr>
							<td>${board.boardNo}</td>
							<!-- 백그라운드 색 지정 -->
							<td ><a style="background:#F8F8F8"
								href="<c:url value="/boardDetailView?boardNo=${board.boardNo }"/> ">
									${board.boardTitle}</a></td>
							<td>${board.memNm }</td>
							<td>${board.createDate}</td>
							<td>${board.updateDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="<c:url value="boardWriteView" />" >
				<button type="button" class="btn btn-light">글쓰기</button>
			</a>
		</div>
	</section>
</body>
</html>