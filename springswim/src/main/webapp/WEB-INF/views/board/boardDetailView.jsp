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
				자유게시판</div>
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
				<c:if test="${sessionScope.login.memId == board.memId }">
					<div class="col-lg-8 col-xl-7 d-flex justify-content-end">
						<form action="<c:url value="/boardEditView"/>" method="post">
							<input type="hidden" name="boardNo" value="${board.boardNo}">
							<button type="submit" class="btn btn-warning me-2">수정</button>
						</form>
						<form action="<c:url value="/boardDel"/>" method="post">
							<input type="hidden" name="boardNo" value="${board.boardNo}">
							<button type="submit" class="btn btn-danger me-2"
								onclick="fn_del()">삭제</button>
						</form>
					</div>
				</c:if>
			</div>
			<form id="replyForm">
				<div class="row justify-content-center">
					<div class="row col-lg-8 col-xl-7">
						<div class="col-lg-9">
							<input class="form-control" type="text" id="replyInput"
								name="replyContent"> <input type="hidden" name="memId"
								value="${sessionScope.login.memId }">
						</div>
						<div class="col-lg-3">
							<button type="button" class="btn btn-info me-2"
								onclick="fn_reply('${sessionScope.login.memId}')">등록</button>
						</div>
					</div>
				</div>
			</form>
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<table class="table">
						<tbody id="replyBody">
							<c:forEach items="${replyList }" var="reply">
								<tr id="${reply.replyNo }">
									<td>${reply.replyContent }</td>
									<td>${reply.memName }</td>
									<td>${reply.replyDate }</td>
									<c:if test="${sessionScope.login.memId == reply.memId }">
										<td><a style="background-color: white;"
											onclick="fn_del('${reply.replyNo}' )">X</a></td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function fn_reply(p_id) {
				if (p_id == '') {
					alert("댓글은 로그인 이후 !!!");
					location.href = '<c:url value="/loginView" />';
				}
				let msg = $('#replyInput').val();
				if (msg == '') {
					alert("내용을 작성해주세요!!!");
					return;
				}
				let json_data = {
					replyContent : msg,
					memId : '${sessionScope.login.memId}',
					boardNo : '${board.boardNo}'
				};
				$.ajax({
							url : '<c:url value="/writeReplyDo" />',
							type : 'POST',
							contentType : 'application/json',
							dataType : 'json',
							data : JSON.stringify(json_data),
							success : function(res) {
								console.log(res);
								let str = "";
								str += "<tr id='"+res.replyNo+"'>";
								str += "<td>" + res.replyContent + "</td>";
								str += "<td>" + res.memName + "</td>";
								str += "<td>" + res.replyDate + "</td>";
								str += "<td style='background-color: white;><a onclick='fn_del(\""
										+ res.replyNo + "\")' >X</a></td>";
								str += "</tr>";
								$("#replyBody").prepend(str);

							},
							error : function(e) {
								console.log(e);
							}
						});
			}
			function fn_del(p_no) {
				if (confirm("정말로 삭제 하시겠습니까?")) {
					$.ajax({
						url : '<c:url value="/delReplyDo" />',
						type : 'POST',
						data : JSON.stringify({
							"replyNo" : p_no
						}),
						contentType : 'application/json',
						dataType : 'text',
						success : function(res) {
							if (res == 'success') {
								$("#" + p_no).remove();
							}
						},
						error : function(e) {
							console.log(e)
						}
					});
				}
			}
		</script>
</body>
</html>