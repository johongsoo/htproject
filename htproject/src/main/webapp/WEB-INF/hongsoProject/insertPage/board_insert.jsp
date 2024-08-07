<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
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
}
.board_wrap .board_title{
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

.board_list {
	width: 100%;
	border-top: 2px solid #000;
}

.board_list > div{
	border-bottom: 1px solid #ddd;
	font-size:0;
}

.board_list > div.top {
	border-color: #999;
}

.board_list > div:last-child{
	border-bottom: 10px solid #000;
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
	border-color: #000;
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

.bt_wrap button.insBtn{
	background: #000;
	color:#fff;
}

.bt_wrap button.btn{
	background: #ddd;
}

.board_page a:first-child {
	border-left: 1px solid #ddd;
}

.board_write {
	border-top: 2px solid #000;
}

.board_write .title,
.board_write .info{
	padding: 15px;
}

.board_write .info{
	border-top:1px dashed #ddd;
	border-bottom: 1px solid #000;
	font-size:0;
}

.board_write .info dl {
	display: inline-block;
	width: 50%;
	vertical-align: middle;
}

.board_write .title dl{
	font-size : 0;
}

.board_write .title dt,
.board_write .title dd,
.board_write .info dt,
	board_write .info dd{
	display: inline-block;
	vertical-align: middle;
	font-size:1rem;
}

.board_write .title dt,
.board_write .info dt {
	width: 100px;
}

.board_write .title dd{
	width: calc(100% - 100px);
}



.board_write .title input[type="text"],
.board_write .info input[type="text"],
.board_write .info input[type="date"]{
	padding: 10px;
	box-sizing: border-box;
	width: calc(200% - 20px);
}

.board_write .title input[type="text"]{
	width: calc(600% - 20px);
}

}
.board_write .cont {
    
	border-bottom: 2px solid #000;
}

.board_write .cont textarea {
	display: block;
	width: 100%;
	height : 500px;
	padding : 15px;
	box-sizing :border-box;
	resize:vertical;
}

</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	var result = "${result}"
	if(result!=""){
		alert(result)  
		location.href="Boardlist.do"
	}
});


document.addEventListener('DOMContentLoaded', function() {
    // 현재 날짜 가져오기
    var today = new Date();
    var day = String(today.getDate()).padStart(2, '0');
    var month = String(today.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 +1
    var year = today.getFullYear();

    // yyyy-mm-dd 형식으로 날짜 설정
    var currentDate = year + '-' + month + '-' + day;

    // input 요소에 현재 날짜 설정
    document.querySelector('input[name="b_date"]').value = currentDate;
});
</script>
</head>
<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>글 작성</strong>
				<p>고객님들의 문의 사항을 자유롭게 남겨주세요
				친절히 순차적으로 답변드리겠습니다.</p>
		</div>
	<form action="BoardInsert01.do" method="post"">
		<div class="board_write">

				<input type="hidden" name="b_no" value="${empty param.b_no?'0':param.b_no}" placeholder="번호">

			<div class="info">
				<dl>
					<dt>이름</dt>
					<dt><input type="text" name="m_name" value="" placeholder="이름"></dt>
				</dl>
				<dl>
					<dt>날짜</dt>
					<dt><input type="date" name="b_date" readonly></dt>
				</dl>
			</div>
			<div class="title">
				<dl>
					<dt>제목</dt>
					<dt><input type="text" name="b_title" value="" placeholder="제목"></dt>
				</dl>
			</div>

			<div class="cont">
				<textarea placeholder="내용입력" name="b_content">${param.b_content}</textarea>
			</div>

		</div>
		
		
		<div class="bt_wrap">
			<button type="submit" id="insBtn" class="insBtn">등록</button>
			<button type="button" id="clsBtn" class="btn">취소</button>
		</div>
	</form>	
	</div>
		<script type="text/javascript">
		$("#insBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("form").submit()
			}
			
		})
		$("#clsBtn").click(function(){
			alert("게시판으로 이동")
			location.href="Boardlist.do"
		})

	
	</script>
</body>
</html>