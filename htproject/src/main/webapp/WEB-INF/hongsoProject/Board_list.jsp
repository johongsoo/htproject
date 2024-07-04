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

/* ul과 li 태그의 기본 리스트 스타일을 제거 */
ul, li {
	list-style: none;
}

/* a 태그의 기본 밑줄 스타일을 제거하고 색상을 상속받도록 설정 */
a{
	text-decoration: none;
	color: inherit;
}

/* 게시판 랩(전체 게시판을 감싸는 컨테이너) 설정 */
.board_wrap{
	width:1000px;
	margin:100px auto;
	text-align:center;
}

/* 게시판 랩 내부의 strong 태그 설정 */
.board_wrap>strong{
	font-size:3rem;
}

/* 게시판 제목 섹션 설정 */
.board_title{
	margin-bottom:30px;
}

/* 게시판 제목 섹션 내부의 strong 태그 설정 */
.board_title strong {
	font-size: 3rem;
}

/* 게시판 제목 섹션 내부의 p 태그 설정 */
.board_title p {
	margin-top:5px;
	font-size: 1.4rem;
}

/* 버튼 랩(여러 버튼들을 감싸는 컨테이너) 설정 */
.bt_wrap{
	margin-top:30px;
	text-align:center;
	font-size:0;
}

/* 버튼 랩 내부의 a 태그 설정 */
.bt_wrap a{
	display: inline-block;
	min-width: 80px;
	margin-left:10px;
	padding: 10px;
	border:1px solid #000;
	border-radius: 2px;
	font-size:1.4rem
}

/* 버튼 랩 내부의 첫 번째 a 태그의 왼쪽 여백 제거 */
.bt_wrap a:first-child{
	margin-left:0;
}

/* 활성화된(on 클래스가 있는) 버튼 설정 */
.bt_wrap a.on{
	background: #000;
	color: #fff;
}

/* 버튼 랩 내부의 button 태그 설정 */
.bt_wrap button{
	display: inline-block;
	min-width: 80px;
	margin-left:10px;
	padding: 10px;
	border:1px solid #000;
	border-radius: 2px;
	font-size:1.4rem
}

/* 기본 스타일이 적용된 버튼 설정 */
.bt_wrap button.btn{
	background: #000;
	color: #fff;
}

/* 게시판 목록 설정 */
.board_list {
	width: 70%;
	border-top: 2px solid #000;
    position:relative;
    left:15%;
}

/* 게시판 목록 내부의 div 설정 */
.board_list > div{
	border-bottom: 1px solid #ddd;
	font-size:0;
}

/* 게시판 목록의 상단(div.top) 설정 */
.board_list > div.top {
	border-color: #999;
}

/* 게시판 목록의 마지막 div 설정 */
.board_list > div:last-child{
	border-bottom: 1px solid #000;
}

/* 게시판 목록 내부의 자식 div 설정 */
.board_list > div > div{
	display: inline-block;
	padding: 15px 0;
	font-size:1rem;
	text-align: center;
}

/* 게시판 목록 상단(div.top) 내부의 자식 div 설정 */
.board_list > div.top > div{
	font-weight:600;
}

/* 게시판 목록의 번호 열 설정 */
.board_list .num{
	width:10%;
}

/* 게시판 목록의 제목 열 설정 */
.board_list .title{
	width:55%;
	text-align: left;
}

/* 게시판 목록 상단의 제목 열 설정 */
.board_list .top .title{
	text-align: center;
}

/* 게시판 목록의 작성자 열 설정 */
.board_list .writer{
	width:15%;
}

/* 게시판 목록의 날짜 열 설정 */
.board_list .date{
	width:10%;
}

/* 게시판 목록의 조회수 열 설정 */
.board_list .count{
	width:10%;
}

/* 페이지 번호 네비게이션 설정 */
.board_page{
	margin-top:30px;
	text-align:center;
	font-size: 0;
}

/* 페이지 번호 네비게이션 내부의 a 태그 설정 */
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

/* 페이지 번호 네비게이션 버튼(bt 클래스가 있는 a 태그) 설정 */
.board_page a.bt {
	padding-top: 5px;
	font-size: 1.0rem;
	letter-spacing: -1px;
}

/* 페이지 번호 네비게이션 숫자(num 클래스가 있는 a 태그) 설정 */
.board_page a.num{
	padding-top:4px;
	font-size: 1.2rem;
}

/* 현재 페이지(on 클래스가 있는 a 태그) 설정 */
.board_page a.num on{
	border-color: #000;
	background: #000;
	color: #fff;
}

/* 페이지 번호 네비게이션의 첫 번째 a 태그의 왼쪽 경계 설정 */
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
		<c:forEach var="board" items="${blist}">
			<div ondblclick="detail(${board.b_no})">
				<div class="num">${board.b_no}</div>
				<div class="title">${board.b_title}</a></div>
				<div class="writer">${board.m_name}</div>
				<div class="date">${board.b_date}</div>
				<div class="count">${board.b_cnt}</div>
			</div>
		</c:forEach>
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
	<script type="text/javascript">
		function detail(b_no){
			location.href="getBoard.do?b_no="+b_no
		}
	</script>	
</body>
</html>