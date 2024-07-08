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

.bt_wrap button.uptBtn{
	background: #81c147;
	color:#fff;
}
.bt_wrap button.delBtn{
	background: #ff2e16;
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
		$("#delBtn").click(function(){
			alert("이동");
			location.href="${path}/traininfolist.do";
		})
	});
	var msg = "${msg}"
	var proc = "${proc}"
	if(msg!=""){
		if(proc=="삭제"){
			alert("조회화면이동");
			location.href="traininfolist.do"
		}
	}
</script>
</head>

<body>
	<div class="board_wrap">
	<div class="main">
		<div class="board_title">
			<strong>열차 정보 수정</strong>
		</div>
			<div class="board_write">
				<form method="post" action="trainInsert100.do">
				<div class="info">
			
					<dl> 
						<dt>열차번호</dt>
						<dt><input type="number" name="t_num" value="${gettrain.t_num }" readonly></dt>
					</dl>
					<dl>
						<dt>열차 종류</dt>
						<dt><select name="t_type" value="${gettrain.t_type }">
								<option>새마을호</option>
								<option>KTX</option>
								<option>ITX</option>
						</select></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>출발역</dt>
						<dt><select name="t_depart" value="${gettrain.t_depart }">
								<option>서울역</option>
								<option>수원역</option>
								<option>천안역</option>
								<option>전주역</option>
								<option>부산역</option>
						</select></dt>
					</dl>
					<dl>
						<dt>도착역</dt>
						<dt><select name="t_arrive" value="${gettrain.t_arrive }">
								<option>서울역</option>
								<option>수원역</option>
								<option>천안역</option>
								<option>전주역</option>
								<option>부산역</option>
						</select></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>출발시간</dt>
						<dt><select name="t_dtime" value="${gettrain.t_dtime }">
								<option>00:00</option><option>01:00</option><option>02:00</option>
								<option>03:00</option><option>04:00</option><option>05:00</option>
								<option>06:00</option><option>07:00</option><option>08:00</option>
								<option>09:00</option><option>10:00</option><option>11:00</option>
								<option>12:00</option><option>13:00</option><option>14:00</option>
								<option>15:00</option><option>16:00</option><option>17:00</option>
								<option>18:00</option><option>19:00</option><option>20:00</option>
								<option>21:00</option><option>22:00</option><option>23:00</option>
						</select></dt>
					</dl>
					<dl>
						<dt>도착시간</dt>
						<dt><select name="t_atime" value="${gettrain.t_atime }">
								<option>00:00</option><option>01:00</option><option>02:00</option>
								<option>03:00</option><option>04:00</option><option>05:00</option>
								<option>06:00</option><option>07:00</option><option>08:00</option>
								<option>09:00</option><option>10:00</option><option>11:00</option>
								<option>12:00</option><option>13:00</option><option>14:00</option>
								<option>15:00</option><option>16:00</option><option>17:00</option>
								<option>18:00</option><option>19:00</option><option>20:00</option>
								<option>21:00</option><option>22:00</option><option>23:00</option>
						</select></dt>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>승차역</dt>
						<dt><select name="t_station" value="${gettrain.t_station }">
								<option>서울역</option>
								<option>수원역</option>
								<option>천안역</option>
								<option>전주역</option>
								<option>부산역</option>
						</select></dt>
					</dl>
				</div>
				<div class="bt_wrap">
					<button type="submit" id="uptBtn" class="udBtn">수정</button>
					<button type="button" id="delBtn" class="udBtn">삭제</button>
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
				$("form").attr("action","trainUpdate.do");
				$("form").submit();	  
	    	}
	    })
	    $("#delBtn").click(function(){
	    	if(confirm("삭제하시겠습니까?")){  	
				location.href="trainDelete.do?t_num="+$("[name=t_num]").val()	
	    	}
	    })	 
		$("#clsBtn").click(function(){
			location.href="traininfolist.do"
		})
	
	</script>
</body>
</html>