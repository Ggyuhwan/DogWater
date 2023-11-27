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

	<div class="container text-center" id="grid1" >
		<div class="row">
			<div class="col"
				style="border-top: 50px; border-bottom: 50px; margin-top: 100px; margin-bottom: 50px; font-size: 40px; color: #F8F8F8;">
				신기록</div>
		</div>
	</div>
	<button type="button" class="btn btn-primary" onclick=manView()>남자
		기록</button>
	<button type="button" class="btn btn-danger" onclick=girlView()>여자
		기록</button>
	<button type="button" class="btn btn-secondary" onclick=recodView()>기록비교</button>
	<div>

		<table class="table table-dark">
			<thead id="title" style='display: none;'>
				<tr>

					<th scope="col">영법</th>
					<th scope="col">거리</th>
					<th scope="col">한국신기록</th>
					<th scope="col">세계신기록</th>
					<th scope="col">올림픽신기록</th>
					<th scope="col">아시아신기록</th>
				</tr>
			</thead>
			<tbody id="man" style='display: none;'>

				<c:forEach items="${boardList }" var="boardList">
					<tr class="table-active" style="font-size: 17px">

						<td>${boardList.division }</td>
						<td>${boardList.distance }</td>
						<td>${boardList.korPr }</td>
						<td>${boardList.worldPr }</td>
						<td>${boardList.olympicPr }</td>
						<td>${boardList.asiaPr }</td>

					</tr>
				</c:forEach>
			</tbody>
			<tbody id="girl" style='display: none;'>
				<c:forEach items="${boardListF }" var="boardListF">

					<tr class="table-active" style="font-size: 17px">

						<td>${boardListF.division }</td>
						<td>${boardListF.distance }</td>
						<td>${boardListF.korPr }</td>
						<td>${boardListF.worldPr }</td>
						<td>${boardListF.olympicPr }</td>
						<td>${boardListF.asiaPr }</td>

					</tr>

				</c:forEach>
			</tbody>

		</table>
		<table class="table table-dark" id="recodtable" style='display: none;'>
			<thead>
   <!--  <input style="background-color: white;" type="text" id="inputField" readonly/> -->
   <!--  <input style="background-color: white;" type="text" id="intputMs" /> -->
				<!-- <input style="background-color: white;" type="text" id="claResult" readonly/> -->
  <div class="container text-center" >
  <div class="row">
    <div class="col">
     <input class="form-control"  type="text" id="inputField"  placeholder="신기록 선택"/>
    </div>
    <div class="col">
      <input class="form-control" type="text"  id="intputMs" placeholder="나의 기록"/>
    </div>
    <div class="col">
     <!--  <button type="button" style="background-color: white;" onclick=fn_cal()>계산</button> -->
      <button type="button" class="btn btn-light" onclick=fn_cal() >계산</button>
    </div>
    <div class="col">
      <input class="form-control" type="text"  id="claResult" readonly placeholder="시간차이"/>
    </div>
    <div class="col">
     
    </div>
    <div class="col">
     
    </div>
  </div>
</div>
 <!--   <input class="form-control"  type="text" id="inputField" readonly/>
   <input class="form-control" type="text"  id="intputMs" />
    	<button type="button" style="background-color: white;" onclick=fn_cal()>계산</button>
				<input class="form-control" type="text"  id="claResult" readonly /> -->

			<tbody id="recodtable">

				<tr>

					<th scope="col">영법</th>
					<th scope="col">거리</th>
					<th scope="col">한국신기록</th>
					<th scope="col">세계신기록</th>
					<th scope="col">올림픽신기록</th>
					<th scope="col">아시아신기록</th>
				</tr>
			</thead>
			
				<c:forEach items="${boardListA }" var="boardListA">
					<tr class="table-active" style="font-size: 17px">
                    <td>${boardListA.division}</td>
                    <td>${boardListA.distance}</td>
                    <td onclick="setValue(document.getElementById('inputField'), '${boardListA.korPr}')">${boardListA.korPr}</td>
                    <td onclick="setValue(document.getElementById('inputField'), '${boardListA.worldPr}')">${boardListA.worldPr}</td>
                    <td onclick="setValue(document.getElementById('inputField'), '${boardListA.olympicPr}')">${boardListA.olympicPr}</td>
                    <td onclick="setValue(document.getElementById('inputField'), '${boardListA.asiaPr}')">${boardListA.asiaPr}</td>
                </tr>
				</c:forEach>
			</tbody>
			</table>
	</div>
	<script>
	function manView(){
		$("#man").show("slow");
		$("#girl").hide("slow");
		$("#title").show("slow");
		$("#recodtable").hide("slow");
	}
	function girlView(){
		$("#man").hide("slow");
		$("#girl").show("slow");
		$("#title").show("slow");
		$("#recodtable").hide("slow");
	}
	function recodView(){
		$("#man").hide("slow");
		$("#girl").hide("slow");
		$("#title").hide("slow");
		$("#recodtable").show("slow");
	}
		
	
	function fn_cal() {
        // 입력된 분:초.밀리초 형태의 값을 가져옵니다.
        var inputField = document.getElementById('inputField').value;
        var inputMs = document.getElementById('intputMs').value;
        var totalMilliseconds;
        var totalMilliseconds2;
        if (inputField.indexOf(':') !== -1) {
        	 // 분:초.밀리초 형태를 분, 초, 밀리초로 분리합니다.
            var parts = inputField.split(':');
            var minutes = parseInt(parts[0], 10);
            parts=parts[1].split('.');
            var seconds = parseFloat(parts[0]);
            var milliseconds = parseFloat(parts[1]);
            
            
         // 분, 초, 밀리초를 밀리초로 변환합니다.
            totalMilliseconds = (minutes * 60 * 1000) + (seconds * 1000) + milliseconds;
           
            console.log(totalMilliseconds);
        } else {
        	var parts = inputField.split('.');
            var seconds = parseInt(parts[0], 10);
            var milliseconds = parseFloat(parts[1]);
            
            totalMilliseconds =  (seconds * 1000) + milliseconds;
            console.log(totalMilliseconds);
            
        }
        if (inputMs.indexOf(':') !== -1) {
        	 // 분:초.밀리초 형태를 분, 초, 밀리초로 분리합니다.
            var parts = inputMs.split(':');
            var minutes = parseInt(parts[0], 10);
            parts=parts[1].split('.');
            var seconds = parseFloat(parts[0]);
            var milliseconds = parseFloat(parts[1]);
            
            
         // 분, 초, 밀리초를 밀리초로 변환합니다.
            totalMilliseconds2 = (minutes * 60 * 1000) + (seconds * 1000) + milliseconds;
           
            console.log(totalMilliseconds);
        } else {
        	var parts = inputMs.split('.');
            var seconds = parseInt(parts[0], 10);
            var milliseconds = parseFloat(parts[1]);
            
            totalMilliseconds2 =  (seconds * 1000) + milliseconds;
            console.log(totalMilliseconds2);
            
        }
        
       
        // 차이를 계산합니다.
        var milliseconds = totalMilliseconds - totalMilliseconds2;
        console.log(milliseconds);
		if(milliseconds<0){
			milliseconds*=-1;
		}
        var totalSeconds = Math.floor(milliseconds / 1000);
        var minutes = Math.floor(totalSeconds / 60);
        var seconds = totalSeconds % 60;
        var millisecondsPart = milliseconds % 1000; 

        var minutesStr = minutes < 10 ? '0' + minutes : '' + minutes;
        var secondsStr = seconds < 10 ? '0' + seconds : '' + seconds;
        var millisecondsStr = millisecondsPart < 10 ? '0' + 
        		millisecondsPart : (millisecondsPart < 100 ? millisecondsPart : '' + millisecondsPart); // 수정

        // 분:초.밀리초 형태로 반환합니다.
        document.getElementById('claResult').value = minutesStr + ':' + secondsStr + '.' + millisecondsStr;

    }

    // 입력 필드에 값을 설정하는 함수
    function setValue(inputElement, value) {
        inputElement.value = value;
    }
	</script>
</body>
</html>