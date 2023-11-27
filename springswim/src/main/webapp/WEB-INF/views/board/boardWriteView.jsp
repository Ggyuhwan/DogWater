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
  <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container" style="margin-top: 30px;">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center " style="color:white;">글 작성</h2>
               <!-- Icon Divider-->
               <!--  <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div> -->
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form action="<c:url value="/boardWriteDo" />" method="post">
                            <!-- title input-->
                            <div class="mb-3">
                                <label for="title" style="color:#EBE4D1; font-size:20px">제목</label>
                                <input class="form-control" id="title" name="boardTitle" type="text" />
                            </div>
                            <!-- content input-->
                            <div class="mb-3">
                             <label for="title" style="color:#EBE4D1; font-size:20px">내용</label>
                                <textarea class="form-control" name="boardContent" style="height: 20rem"></textarea>
                            </div>
                            <!-- Submit Button-->
                            <button class="btn btn-light btn-xl" type="submit">등록</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>