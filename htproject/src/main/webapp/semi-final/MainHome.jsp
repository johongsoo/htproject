<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<link rel="stylesheet" href="${path}/semi-final/styles.css">



<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
	
	});
</script>


</head>

<body>
<%
session.setAttribute("mem_id","junha" );
session.setAttribute("mem_pwd","hwang" );
String mem_id = (String)session.getAttribute("mem_id");
%>
	<header>
		<div class="logo">
			<h1>휴먼철도 999</h1>
		</div>
		<c:choose>
		<c:when test="${mem_id == 'junha' && mem_pwd=='hwang'}">
			<button class="login-button" onclick="goPage01()" style="position:relative;left:380px;">마이페이지</button>
			<button class="signup-button" onclick="location.href=''">로그아웃</button>
		</c:when>
		<c:otherwise>
		<div class="user-buttons">
			<button class="login-button" onclick="location.href=''">로그인</button>
			<button class="signup-button" onclick="location.href=''">회원가입</button>
		</div>
		</c:otherwise>
		 </c:choose>
	</header>
	<nav>
		<ul>
			<li><a href="#">열차 조회</a></li>
			<li><a href="#">고객센터 게시판</a></li>
			<li><a href="Recomend.jsp">추천 여행지</a></li>
			<li><a href="RouteMap.jsp">노선도</a></li>
		</ul>
	</nav>

	<main>
		<section class="search-form">
			<h2>열차 조회</h2>
			<form action="#">
				<label for="departure">출발지:</label> <select id="departure">
					<option value="seoul">서울</option>
					<option value="busan">부산</option>
					<option value="daegu">대구</option>
					<!-- 여기에 필요한 출발지 옵션을 추가할 수 있습니다 -->
				</select> <label for="destination">도착지:</label> <select id="destination">
					<option value="busan">부산</option>
					<option value="seoul">서울</option>
					<option value="daegu">대구</option>
					<!-- 여기에 필요한 도착지 옵션을 추가할 수 있습니다 -->
				</select> <label for="date">날짜:</label> <input type="date" id="date">
				<button type="submit">조회</button>
			</form>

			<div class="sns">
				<table class="sns-table">
					<caption>SNS</caption>
					<tr>
						<td><img src="메인슬라이드/네이버블로그.png"></td>
						<td><img src="메인슬라이드/카카오톡.png"></td>
						<td><img src="메인슬라이드/유튜브2.png"></td>
					</tr>
					<tr>
						<td><img src="메인슬라이드/페이스북.png"></td>
						<td><img src="메인슬라이드/트위터1.png"></td>
						<td><img src="메인슬라이드/인스타그램1.png"></td>
					</tr>
				</table>
			</div>

		</section>

		<section class="main-content">
			<div class="slideshow-container">
				<div class="slide">
					<img src="메인슬라이드/1.jpg" alt="Slide 1">
				</div>
				<div class="slide">
					<img src="메인슬라이드/2.png" alt="Slide 2">
				</div>
				<div class="slide">
					<img src="메인슬라이드/3.jpg" alt="Slide 3">
				</div>
				<div class="slide">
					<img src="메인슬라이드/4.jpg" alt="Slide 4">
				</div>
				<div class="slide">
					<img src="메인슬라이드/5.jpg" alt="Slide 5">
				</div>
				<div class="slide">
					<img src="메인슬라이드/남쨩.jpg" alt="Slide 6">
				</div>
				<div class="slide">
					<img src="메인슬라이드/기억이형.jpg" alt="Slide 7">
				</div>
			</div>
			<div class="dots">
				<span class="dot"></span> <span class="dot"></span> <span
					class="dot"></span> <span class="dot"></span> <span class="dot"></span>
				<span class="dot"></span> <span class="dot"></span>
			</div>

			<div class="best-travel-products">
				<h2>Best 여행 상품</h2>
				<img src="메인슬라이드/best.png">
			</div>

			<div class="guide-table">
				<table>
					<caption>Guide</caption>
					<tr>
						<td onclick="location.href='#'">고객게시판</td>
						<td onclick="location.href='#'">배차정보</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>

		</section>



	</main>
	<footer>
		<p>&copy; 2024 기차예약. All rights reserved.</p>
	</footer>
</body>
<script type="text/javascript"> 
document.addEventListener('DOMContentLoaded', function() {
    showSlides(); // 페이지 로드 후 슬라이드 쇼 시작
});

let slideIndex = 0; // 전역 변수로 슬라이드 인덱스 설정

function showSlides() {
    let slides = document.querySelectorAll('.slide');
    let dots = document.querySelectorAll('.dot');
    
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = 'none';  // 모든 슬라이드를 숨김
    }
    slideIndex++; // 다음 슬라이드로 이동
    if (slideIndex > slides.length) {slideIndex = 1}  // 슬라이드 인덱스가 범위를 초과하면 처음으로

    for (let i = 0; i < dots.length; i++) {
        dots[i].classList.remove('active');  // 모든 점에서 active 클래스 제거
    }

    slides[slideIndex-1].style.display = 'block';  // 현재 슬라이드 표시
    dots[slideIndex-1].classList.add('active');  // 현재 점 활성화

    setTimeout(showSlides, 5000); // 2초마다 슬라이드 전환
}
function goPage01(){
	  const username = "<%=mem_id%>";
	  location.href = "http://localhost:7080/htproject/mem.do?mem_id=<%=mem_id%>";
}
</script>
</html>