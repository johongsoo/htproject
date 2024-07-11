<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backendweb.z01_vo.*"
    import="backendweb.d01_dao.*"
    import="backweb.a04_database.*" 
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
<title>Insert title here</title>
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

.main{
    position: relative;
          background-image: url('https://blogger.googleusercontent.com/img/a/AVvXsEg5uSMnTyd7fBwdGvNKbkQu6KPwUoGpm_7PAKnQ-_hSBcF3a5q5QaOcWJwRez5g8AeO7efxcl_SPU1WnFQCK5TZBsAURSO8HxSVBX32T0_i6AiSp2DvTvxYWuyw7fRh_jEVgM9Ji4v3vY5mYI1T27PEe_I_XSm_OLwSldBA9_3TeBI2HRHRn8L_iWuiNt0=w560-h215');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat; 
         z-index: 5;
	background-size: 1000px;

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
.board_write .info input[type="number"],
.board_write .info input[type="email"],
.board_write .info input[type="text"],
.board_write .info select{
	padding: 10px;
	box-sizing: border-box;
	width: calc(200% - 20px);
}

.board_write .cont {
	border-bottom: 1px solid #000;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").submit()
			}
		})
		$("#clsBtn").click(function(){
			alert("이동");
			location.href="${path}/master_page.do";
		})
	});
	var msg = "${msg}"
		var proc = "${proc}"
		if(msg!=""){
			if(proc=="삭제"){
				alert("조회화면이동");
				location.href="master_page.do"
			}
		}
</script>
</head>

<body>
	<div class="board_wrap">
	<div class="main">
		<div class="board_title">
			<strong>회원 수정</strong>
		</div>
			<div class="board_write">
				<form method="post" action="memberinsert100.do">
				<div class="info">
			
					<dl>
						<dt>고유번호</dt>
						<dt><input type="text" name="m_unique" value="${getmember.m_unique}" readonly></dt>
					</dl>
				</div>
				<div class="info">
			
					<dl>
						<dt>아이디</dt>
						<dt><input type="text" name="m_id" value="${getmember.m_id}" readonly></dt>
					</dl>
					<dl>
						<dt>권한</dt>
						<dt><select name="m_authority" value="${getmember.m_authority}">
								<option>관리자</option>
								<option>Vip</option>
								<option>일반회원</option>
						</select></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>패스워드</dt>
						<dt><input type="text" name="m_pwd" value="${getmember.m_pwd}"></dt>
					</dl>
					<dl>
						<dt>이름</dt>
						<dt><input type="text" name="m_name" value="${getmember.m_name}"></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>나이</dt>
						<dt><input type="number" name="m_age" value="${getmember.m_age}"></dt>
					</dl>
					<dl>
						<dt>도착시간</dt>
						<dt><input type="email" name="m_email" value="${getmember.m_email}"></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>전화번호</dt>
						<dt><input type="text" name="m_number" value="${getmember.m_number}"></dt>
					</dl>
				</div>
				<div class="bt_wrap">
					<button type="submit" id="uptBtn" class="uptBtn">수정</button>
					<button type="button" id="delBtn" class="delBtn">삭제</button>
					<button type="button" id="clsBtn" class="btn">취소</button>
					<!-- 
					<button  id="insBtn" class="insBtn">등록</button>
					<button  id="clsBtn" class="btn">취소</button>
					 400 오류 clsBtn 누를 시 배차정보리스트 페이지로 넘어 가야하지만
					 버튼의 디폴트 값이 submit라서 위의 폼 액션의 값으로 페이지가 넘어가 오류가나온다
					 버튼 코드에 타입을 명시해주어 js이벤트가 잘 작동 할 수있게 수정해주었다.
					 -->
				</div>
				</form>
		</div>
		

	</div>
	</div>
<script type="text/javascript">
	    $("#uptBtn").click(function(){
	    	if(confirm("수정하시겠습니까?")){
				// 유효성 check 필요시 처리..  trainUpdate.do
				$("form").attr("action","memberUpdate.do");
				$("form").submit();	  
				// $("form")[0].reset() 반드시 배열로 선언해야 처리가 된다.(초기화시)  		
				// $("form")[0].submit() $("form").submit() 둘다 사용가능..		
	    	}
	    })
	    $("#delBtn").click(function(){
	    	if(confirm("삭제하시겠습니까?")){
				// 유효성 check 필요시 처리..
				/*
				$("form").attr("action","deleteEmp.do");
				$("form")[0].submit();   document.querySelector("form").submit();
				*/	    	
				location.href="deleteMember.do?m_unique="+$("[name=m_unique]").val()	
	    	}
	    })	 
    
    

	
		$("#clsBtn").click(function(){
			location.href="master_page.do"
		})
	
	</script>
</body>
</html>