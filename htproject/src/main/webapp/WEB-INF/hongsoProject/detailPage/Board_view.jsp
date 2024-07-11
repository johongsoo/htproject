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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
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

.container-flluid{
	border-top:3px solid skyblue;
	border-bottom:1px solid black;
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
	margin-bottom:30px;
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
.bt_wrap button.main{
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

#mainBtn{
	background-color:black;
}

#delBtn{
	background-color:red;
}

</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#modalFrm").on("keydown", function(event) {
		if (event.key === "Enter") {
			event.preventDefault();
			return false;
		}
	})
	
	
	$("#mainBtn").click(function(){
		location.href="Boardlist.do"
	})
	$("#update").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("#modalFrm").submit()
			}
			
	})
	
	var msg = "${msg}"
	var proc = "${proc}"
		if(msg!=""){
			alert(msg)  
			if(proc == 'del'){
				alert("게시판으로 이동")
				location.href="Boardlist.do"
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
				<dt>${boardinfo.b_title}</dt>
				<input type="hidden" name="title" value="${param.b_title}">
				<input type="hidden" name="b_cnt" value="${param.b_cnt}">
			</div>
			<div class="info">
				<dl>
					<dt>번호</dt>
					<dt>${boardinfo.b_no}</dt>
					<input type="hidden" name="b_no" value="${param.b_no}" readonly>
				</dl>
				<dl>
					<dt>글쓴이</dt>
					<dt>${boardinfo.m_name}</dt>
					<input type="hidden" name="m_name" value="${param.m_name}" readonly>
				</dl>
				<dl>
					<dt>작성일</dt>
					<dt>${boardinfo.b_date}</dt>
					<input type="hidden" name="b_date" value="${param.b_date}" readonly>
				</dl>
			</div>
			<div class="cont">
				<dt>
				${boardinfo.b_content}
				</dt>
				<input type="hidden" name="b_content" value="${param.b_content}">
			</div>
		</div>
		
		<div class="bt_wrap">
			<button type="button" id="mainBtn" class="btn btn-xs btn-success">목록</button>
			<button type="button" class="btn btn-xs btn-success" data-toggle="modal"
					data-target="#modifyModal">수정</button>
			<button type="button" class="btn btn-xs btn-success" id="delBtn" >삭제</button>
		</div>
	</form>
	<section class="content container-flluid">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">댓글 작성</h3>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label for="newReplyText">댓글 내용</label>
						<input class="form-control" id="newReplyText" name="replyText" placeholder="댓글 내용을 입력해 주세요">
					</div>
					<div class="form-group">
						<label for="newReplyWriter">댓글 작성자</label>
						<input class="form-control" id="newReplyWriter" name="replyWriter" placeholder="댓글 작성자를 입력해 주세요">
					</div>
				</div>
				<div class="box-footer">
					<ul id="replies">
					
					</ul>
				</div>
				<div class="box-footer">
					<div class="text-center">
						<ul class="pagination pagination-sm no-margin">
						
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="modifyModal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">게시글 수정</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>				
					</div>
					<form id="modalFrm" method="post" action="updateBoardinfo.do">
					<div class=modal-body">
						<div class="form-group">
							<label for="boardinfo.b_no">번호</label>
							<input class="form-control" id="boardinfo.b_no" name="b_no" value="${boardinfo.b_no}" readonly>
							<label for="boardinfo.m_name">글쓴이</label>
							<input class="form-control" id="boardinfo.m_name" name="m_name" value="${boardinfo.m_name}" readonly>
						</div>
						<div class="form-group">
							<label for="boardinfo.b_title">제목</label>
							<input class="form-control" id="boardinfo.b_title" value="${boardinfo.b_title}" name="b_title">
							<label for="boardinfo.b_date">등록일</label>
							<input class="form-control" id="boardinfo.b_date" name="b_date" value="${boardinfo.b_date}" readonly>
						</div>
						<div class="form-group">
							<label for="boardinfo.b_content">내용</label>
							<textarea class="form-control" id="boardinfo.b_content" name="b_content">
							${boardinfo.b_content}
							</textarea>
							<input type="hidden" name="b_cnt" value="${boardinfo.b_cnt}">
						</div>
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default pull-left" data-dimiss="modal">닫기</button>
						<button type="submit" class="btn btn-success modalModBtn" id="update">수정</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	</div>
	<script type="text/javascript">
	$("#update").click(function(){
		location.href="updateBoardinfo.do?b_no="+$("[name=b_no]").val();
	})
	
	$("#delBtn").click(function(){
		location.href="deleteBoardinfo.do?b_no="+$("[name=b_no]").val();
	})	
	
	</script>
</div>
</body>
</html>