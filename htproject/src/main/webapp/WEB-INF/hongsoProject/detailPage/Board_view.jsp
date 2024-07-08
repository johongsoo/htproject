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

.board_page a:first-child {
	border-left: 1px solid #ddd;
}

.board_view {
	width:100%;
	border-top: 2px solid #000;
}

.board_view .title{
	padding: 20px 15px;
	border-bottom: 1px dashed #ddd;
	font-size:2rem;
}
.board_view .info{
	padding: 15px;
	border-bottom : 1px solid #999;
	/*font-size:0;*/
}

.board_view .info dl {
	display: inline-block;
	padding: 0 20px;
	position: relative;
}

.board_view .info dl:first-child{
	padding-left:0;
}

.board_view .info dl::before {
	content: "";
	position: absolute;
	top: 4.2px;
	left: 0;
	display:block;
	width : 1px;
	height: 13px;
	background:#ddd;
}

.board_view .info dl:first-child::before{
	display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
	display:inline-block;
	/*font-size:1.4rem;*/
}

.board_view .info dl dt{
	
}

.board_view .info dl dd{
	margin-left:10px;
	color: #777;
}

.board_view .cont {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
}

</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#mainBtn").click(function(){
		location.href="BoardInfoList.do"
	})
	var msg = "${msg}"
		if(msg!=""){
			alert(msg)  // 등록 성공 alert()로딩 : 모델 데이터를 받아서..
			var proc = "${proc}"
			if(proc == 'del'){
				location.href="BoardInfoList.do"
			}
				
}
});
</script>
<body>
<div class="board_wrap">
	<div class="board_title">		
		<strong> 게시글 상세 내용</strong>
		<p>친절하게 답변드리겠습니다</p>
	</div>
	<div class="board_view_wrap">
		<form method="post">
		<div class="board_view">
		
			<div class="title">
				${getboard.b_title}
				<input type="hidden" name="title" value="${getboard.b_title}">
			</div>
			<div class="info">
				<dl>
					<dt>번호</dt>
					<dt>${getboard.b_no}</dt>
					<input type="hidden" name="b_no" value="${getboard.b_no}">
				</dl>
				<dl>
					<dt>글쓴이</dt>
					<dt>${getboard.m_name}</dt>
					<input type="hidden" name="m_name" value="${getboard.m_name}">
				</dl>
				<dl>
					<dt>작성일</dt>
					<dt>${getboard.b_date}</dt>
				</dl>
				<dl>
					<dt>조회</dt>
					<dt>${getboard.b_cnt}</dt>
				</dl>
			</div>
			<div class="cont">
				${getboard.b_content}
				<input type="hidden" name="b_content" value="${getboard.b_content}">
			</div>
		</div>
		<div class="bt_wrap">
			<button type="button" id="mainBtn" class="btn">목록</button>
			<button type="button" id="uptBtn">수정</button>
			<button type="button" id="delBtn" >삭제</button>
		</div>
	</form>
	</div>
	<script type="text/javascript">
	 $("#uptBtn").click(function(){
	        location.href = "BoardUpdate.do?b_no=" + $("[name=b_no]").val();
	 });
		$("#delBtn").click(function(){
			location.href="deleteBoard.do?b_no="+$("[name=b_no]").val();
		})	
	
	</script>
</div>
</body>
</html>