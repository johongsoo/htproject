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
<style>

</style>

<body>
	<header>
		<div class="logo">
			<h1>휴먼철도 999</h1>
		</div>
		<div class="user-buttons">
			<button class="signup-button" onclick="location.href='MainHome.jsp'">홈으로</button>
		</div>
	</header>
	<nav>
		<ul>
			<li></li>
			<li></li>
			<li>추천 여행지</li>
			<li></li>
		</ul>
	</nav>

	<main>
		<section class="recomend-content">
			<div class="slideshow-container">
				<div class="slide">
					<img src="추천여행지/강릉/1.png" alt="Slide 1" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/강릉/2.png" alt="Slide 2" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/강릉/3.png" alt="Slide 3" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/강릉/4.png" alt="Slide 4" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/강릉/5.png" alt="Slide 5" style="max-width:600px;">
				</div>
			</div>
			<div class="dots">
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span>
			</div>
			<h2>강원도 강릉</h2>
			<p>
			첫번째로 추천해 드리는 곳은 강원도 강릉입니다. 강릉은 동해안의 아름다운 해변과<br>
			맛있는 음식, 다채로운 문화가 어우러진 곳입니다<br>
			서울역에서 KTX를 타면 2시간만에 강릉에 도착할 수 있습니다.<br>
			강릉에 도착하면 정동진역에서 세계에서 가장 가까운 기차역을 경험하거나<br>
			정동심곡바다부채길에서 풍경을 감상하세요.썬크루즈테마공원에서는 해상케이블카를 타고<br>
			바다위를 날아보거나 시간박물관에서는 세계각국의 시계들을 구경하세요<br>
			</p>
			<br>
			<br>
			<br>
			
			<div class="slideshow-container">
				<div class="slide">
					<img src="추천여행지/순천/1.png" alt="Slide 1" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/순천/2.png" alt="Slide 2" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/순천/3.png" alt="Slide 3" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/순천/4.png" alt="Slide 4" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/순천/5.png" alt="Slide 5" style="max-width:600px;">
				</div>
			</div>
			<div class="dots">
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span>
			</div>
			<h2>전라남도 순천</h2>
			<p>
			두번째로 추천해 드리는 곳은 전라남도 순천입니다. 순천은 자연생태의 보고로 불리는곳으로<br>
			순천만과 낙안읍성,순천만국가정원 등 다양한 관광지가 있습니다.<br>
			서울역에서 KTX를 타면 3시간30분만에 순천에 도착할 수 있습니다.순천에 도착하면<br>
			순천만자연생태공원에서 철새들의 모습을 감상하거나 순천만국가정원에서 별빛축제를 즐기세요.<br>
			조선시대 모습을 그대로 간직한 낙안읍성에서는 성곽길을 산책하거나 죽도봉공원에서는<br>
			순천의 야경을 바라보세요.<br>
			</p>
			<br>
			<br>
			<br>
			
			<div class="slideshow-container">
				<div class="slide">
					<img src="추천여행지/진주/1.png" alt="Slide 1" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/진주/2.png" alt="Slide 2" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/진주/3.png" alt="Slide 3" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/진주/4.png" alt="Slide 4" style="max-width:600px;">
				</div>
				<div class="slide">
					<img src="추천여행지/진주/5.png" alt="Slide 5" style="max-width:600px;">
				</div>
			</div>
			<div class="dots">
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span>
			</div>
			<h2>경상남도 진주</h2>
			<p>
			세번째로 추천해 드리는 곳은 경상남도 진주입니다.진주는 역사와 문화가 공존하는 곳으로<br>
			진주성과 남강, 진양호 등 다양한 관광지가 있습니다.<br>
			서울역에서 KTX를 타면 3시간 20분만에 진주에 도착할 수 있습니다.<br>
			진주에 도착하면 진주성에서 조선시대의 흔적을 느끼거나 촉석루에서 남강의 경치를<br>
			감상하세요. 진양호공원에서는 인공호수와 산책로를 즐기거나, 진양호동물원에서<br>
			동물들과 친해지세요.경상남도수목원에서는 다양한 식물들을 구경하거나,<br>
			진주교도소세트장에서 드라마 촬영지를 체험하세요.진주는 진주냉면이 유명하므로<br>
			하연옥이나 은성게장에서 맛보세요.
			</p>
			<br>
			<br>
			<br>
			<br>
			
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
    let slideShows = document.querySelectorAll('.slideshow-container');
    let dots = document.querySelectorAll('.dot');

    for (let i = 0; i < slideShows.length; i++) {
        let slides = slideShows[i].getElementsByClassName('slide');
        
        // 모든 슬라이드를 숨김
        for (let j = 0; j < slides.length; j++) {
            slides[j].style.display = 'none';
        }
    }

    slideIndex++;
    if (slideIndex > slideShows[0].getElementsByClassName('slide').length) {
        slideIndex = 1;
    }

    // 각 슬라이드 쇼 컨테이너에서 동일한 인덱스의 슬라이드를 표시
    for (let i = 0; i < slideShows.length; i++) {
        let slides = slideShows[i].getElementsByClassName('slide');
        slides[slideIndex - 1].style.display = 'block';
    }

    // 모든 점을 비활성화
    for (let i = 0; i < dots.length; i++) {
        dots[i].classList.remove('active');
    }

    // 현재 슬라이드에 해당하는 점을 활성화
    dots[slideIndex - 1].classList.add('active');

    setTimeout(showSlides, 5000); // 2초마다 슬라이드를 변경
}

</script>
</html>