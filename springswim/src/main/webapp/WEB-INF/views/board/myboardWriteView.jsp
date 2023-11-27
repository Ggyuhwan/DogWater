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
        운동 작성 
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
                        <form action="<c:url value="/myboardWriteDo" />" method="post">
                            <!-- title input-->
                          <div class="row g-5">
                          	 <div class="col-sm">
							    <input type="text" class="form-control" name="memId" placeholder="memId" aria-label="memId" value="${sessionScope.login.memId }" readonly>
							  </div>
							  <div class="col-sm">
							    <input type="text" class="form-control" name="skil" placeholder="skil" aria-label="skil">
							  </div>
							  <div class="col-sm">
							    <input type="text" class="form-control" name="stroke" placeholder="영법" aria-label="영법">
							  </div>
							  <div class="col-sm">
							    <input type="text" class="form-control" name="distance" placeholder="거리" aria-label="거리">
							  </div>
							  <div class="col-sm">
							    <input type="text" class="form-control" name="ssat" placeholder="세트" aria-label="세트">
							  </div>
							  <div class="col-sm">
							    <input type="text" class="form-control" name="cyc" placeholder="사이클" aria-label="사이클">
							  </div>
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