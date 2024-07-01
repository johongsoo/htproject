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
.nosun-content {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* 그림자 추가 */
	width: 1240px; /* 기차 조회 결과 영역의 너비 조정 */
	position: relative; /* 슬라이드 쇼 내의 절대 위치된 요소를 위해 */

}
.slideshow-container22 {
    position: relative;
    max-width: 1000px;
    margin: auto;
}

.slide22 {
    display: none;
}
.prev22, .next22 {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    padding: 16px;
    margin-top: -22px;
    color: black;
    font-weight: bold;
    font-size: 25px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
}

.next22 {
    right: 0;
    border-radius: 3px 0 0 3px;
}

.prev22:hover, .next22:hover {
    background-color: rgba(0,0,0,0.4);
}

.dot22 {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
}

.active22, .dot22:hover {
    background-color: #717171;
}

.fade22 {
    -webkit-animation-name: fade22;
    -webkit-animation-duration: 1.5s;
    animation-name: fade22;
    animation-duration: 1.5s;
}

@-webkit-keyframes fade22 {
    from {opacity: .4} 
    to {opacity: 1}
}

@keyframes fade22 {
    from {opacity: .4} 
    to {opacity: 1}
}
.img22 {
    position:relative;
    left:300px;
}
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
			<li></li>
			<li>노선도</li>
		</ul>
	</nav>

	<main>
		<section class="nosun-content">
	<div class="slideshow-container22">
        <div class="slideshow-container22">
        <div class="slide22 fade22">
            <img src="노선도/1.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/2.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/3.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/4.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/5.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/6.png" style="width:40%" class="img22">
        </div>
        <div class="slide22 fade22">
            <img src="노선도/7.png" style="width:40%" class="img22">
        </div>
        <a class="prev22" onclick="plusSlides22(-1)">&#10094;</a>
        <a class="next22" onclick="plusSlides22(1)">&#10095;</a>
    </div>
    <br>
    <div style="text-align:center">
        <span class="dot22" onclick="currentSlide22(1)"></span> 
        <span class="dot22" onclick="currentSlide22(2)"></span> 
        <span class="dot22" onclick="currentSlide22(3)"></span>
        <span class="dot22" onclick="currentSlide22(4)"></span> 
        <span class="dot22" onclick="currentSlide22(5)"></span> 
        <span class="dot22" onclick="currentSlide22(6)"></span> 
        <span class="dot22" onclick="currentSlide22(7)"></span>  
    </div>
    </div>
		</section>



	</main>
	<footer>
		<p>&copy; 2024 기차예약. All rights reserved.</p>
	</footer>
</body>
<script type="text/javascript"> 
let slideIndex22 = 1;
showSlides22(slideIndex22);

function plusSlides22(n) {
    showSlides22(slideIndex22 += n);
}

function currentSlide22(n) {
    showSlides22(slideIndex22 = n);
}

function showSlides22(n) {
    let i;
    let slides22 = document.getElementsByClassName("slide22");
    let dots22 = document.getElementsByClassName("dot22");
    if (n > slides22.length) {slideIndex22 = 1}    
    if (n < 1) {slideIndex22 = slides22.length}
    for (i = 0; i < slides22.length; i++) {
        slides22[i].style.display = "none";  
    }
    for (i = 0; i < dots22.length; i++) {
        dots22[i].className = dots22[i].className.replace(" active22", "");
    }
    slides22[slideIndex22-1].style.display = "block";  
    dots22[slideIndex22-1].className += " active22";
}
</script>
</html>