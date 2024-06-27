<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="styesheet" href="Board_main_css.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	@charset "UTF-8";

*{
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

a{
	text-decoration: none;
	color: inherit;
}

.board_wrap{
	width:1000px;
	margin:100px auto;
	text-align:center;
}
.board_wrap>strong{
	font-size:3rem;
}
.board_title{
	margin-bottom:30px;
}

.board_title strong {
	font-size: 3rem;
}

.board_title p {
	margin-top:5px;
	font-size: 1.4rem;
}

.bt_wrap{
	margin-top:30px;
	text-align:center;
	font-size:0;
}

.bt_wrap a{
	display: inline-block;
	min-width: 80px;
	margin-left:10px;
	padding: 10px;
	border:1px solid #000;
	border-radius: 2px;
	font-size:1.4rem
}

.bt_wrap a:first-child{
	margin-left:0;
}

.bt_wrap a.on{
	background: #000;
	color: #fff;
}

.bt_wrap button{
	display: inline-block;
	min-width: 80px;
	margin-left:10px;
	padding: 10px;
	border:1px solid #000;
	border-radius: 2px;
	font-size:1.4rem
}
.bt_wrap button.btn{
	background: #000;
	color: #fff;
}
.board_list {
	width: 100%;
	border-top: 2px solid #000;
}

.board_list > div{
	border-bottom: 1px solid #ddd;
	font-size:0;
}

.board_list > div.top {
	border-coler: #999;
}

.board_list > div:last-child{
	border-bottom: 10x solid #000;
}

.board_list > div > div{
	display: inline-block;
	padding: 15px 0;
	font-size:1.4rem;
	text-align: center;

}

.board_list > div.top > div{
	font-weight:600;
}

.board_list .num{
	width:10%;
}

.board_list .title{
	width:60%;
	text-align: left;
}

.board_list .top .title{
	text-align: center;
}

.board_list .writer{
	width:10%;
}

.board_list .date{
	width:10%;
}

.board_list .count{
	width:10%;
}

.board_page{
	margin-top:30px;
	text-align:center;
	font-size: 0;
}

.board_page a{
	display: inline-block;
	width:32px;
	height:32px;
	border: 1px solid #ddd;
	border-left: 0;
	vertical-align: middle;
	line-height:100%;
	box-sizing:border-box;    
}

.board_page a.bt {
	padding-top: 5px;
	font-size: 1.0rem;
	letter-spacing: -1px;
}

.board_page a.num{
	padding-top:4px;
	font-size: 1.2rem;
}

.board_page a.num.on{
	border-coler: #000;
	background: #000;
	coloer: #fff;
}

.board_page a:first-child {
	border-left: 1px solid #ddd;
}



</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#insBtn").click(function(){
			location.href="Board_insert.do"
		})
	});
</script>
<body>

	<div class="board_wrap">
	<div class="board_title">
		<strong>고객 센터 문의 게시판</strong>
		<p>고객님들의 문의 사항을 자유롭게 남겨주세요
			친절히 순차적으로 답변드리겠습니다.</p>
	</div>
	</div>
	<div class="board_list_wrap">
		<div class="board_list">
			<div class="top">
				<div class="num">번호</div>
				<div class="title">제목</div>
				<div class="writer">글쓴이</div>
				<div class="date">작성일</div>
				<div class="count">조회</div>
			</div>
			<div>
				<div class="num">5</div>
				<div class="title"><a href="Board_view.do">글 제목이 들어갑니다</a></div>
				<div class="writer">홍길동</div>
				<div class="date">2024.06.28</div>
				<div class="count">33</div>
			</div>
			<div>
				<div class="num">4</div>
				<div class="title"><a href="Board_view.do">글 제목이 들어갑니다</a></div>
				<div class="writer">홍길동</div>
				<div class="date">2024.06.28</div>
				<div class="count">33</div>
			</div>
			<div>
				<div class="num">3</div>
				<div class="title"><a href="Board_view.do">글 제목이 들어갑니다</a></div>
				<div class="writer">홍길동</div>
				<div class="date">2024.06.28</div>
				<div class="count">33</div>
			</div>
			<div>
				<div class="num">2</div>
				<div class="title"><a href="Board_view.do">글 제목이 들어갑니다</a></div>
				<div class="writer">홍길동</div>
				<div class="date">2024.06.28</div>
				<div class="count">33</div>
			</div>
			<div>
				<div class="num">1</div>
				<div class="title"><a href="Board_view.do">글 제목이 들어갑니다</a></div>
				<div class="writer">홍길동</div>
				<div class="date">2024.06.28</div>
				<div class="count">33</div>
			</div>
			
		</div>
		<div class="board_page">
			<a href="#" class="bt first"><<</a>
			<a href="#" class="bt prev"><</a>
			<a href="#" class="num on">1</a>
			<a href="#" class="num">2</a>
			<a href="#" class="num">3</a>
			<a href="#" class="num">4</a>
			<a href="#" class="num">5</a>
			<a href="#" class="bt next">></a>
			<a href="#" class="bt last">>></a>
		</div>
		<div class="bt_wrap">
			<button id="insBtn" class="btn">등록</button>
		</div>
	</div>
	
</body>
</html>