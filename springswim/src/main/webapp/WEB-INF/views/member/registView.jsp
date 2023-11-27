<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" />
<title>회원가입</title>

</head>
<body>
<%--  <%@include file="/WEB-INF/inc/top.jsp" %> --%>
 <div id="title1" style="font-size: 50px; font-weight: 700; margin: auto; padding-top: 50px;">
 Water Dog
 </div> 
    <div class="login-wrapper"> 
        <h2 style="margin-top: 50px;
                  margin-bottom: 50px;
                  text-align: center;
                  font-size: 30px;">회원가입</h2>
     
        <form method="post" action="${pageContext.request.contextPath}/registDo"  id="login-form">
            <input type="text" name="id" placeholder="ID">
            <input type="text" name="nm" placeholder="Nm">
            <input type="password" name="pw" placeholder="Password">
            <!-- <input type="password" name="userPassword" placeholder="Password 확인"> -->
            <label for="remember-check">
               
            </label>
          				  <!--회원가입시 양식에 맞지않으면 머무르게하기 -->
             <c:if test="${sessionScope.login == null}">
             <a href="<%=request.getContextPath()%>/registView"> </a>
            <input class="login_btn" type="submit" value="회원가입" >
            </c:if>
        </form>
    </div>
</body>
</html>