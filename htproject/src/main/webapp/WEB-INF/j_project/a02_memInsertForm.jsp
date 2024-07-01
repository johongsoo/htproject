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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link rel="stylesheet" href="${path}/semi-final/styles.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// enter키 입력시 form submit 처리 방지.
		$("form").on("keydown", function(event) {
			/// 해당 이벤트가 event.keyCode는 13과 같은 event.key는 Enter키를
			// 입력시, 요청값을 서버에 전달하는 것을 
			if (event.key === "Enter") {
				// 방지 처리하는 기능 수행..
				event.preventDefault();
				return false;
			}
		})
	});
	
	var result = "${result}"
		if(result!=""){
			alert(result)  // 등록 성공 alert()로딩 : 모델 데이터를 받아서..
		}
</script>
<style>

</style>
</head>

<body>
<header>
		<div class="logo">
			<h1>휴먼철도 999</h1>
		</div>
		<div class="user-buttons">
			<button class="upt-button" id="reg01Btn">등록하기</button>
			<button class="del-button" id="initBtn">입력초기화</button>
		</div>
	</header>
	<nav>
		<ul>
			<h2>회원정보등록</h2>
		</ul>
	</nav>
	<main>
		<section class="mem-content">
			<form method="post" action="memInsert100.do">
			
				<h2 style="margin-bottom: 40px;">아이디/비밀번호</h2>
				<p class="ppap">
					<input type="text" name="mem_id" placeholder="아이디"/>
				</p>
				
				
				<p class="ppap">
					<input type="password" name="mem_pwd" placeholder="비밀번호">
				</p>
				
			</form>	
		</section>
		
		<section class="mem-content">
				<h2>개인정보</h2>
				
				<p class="ppap">
					<input type="text" name="mem_name" value="" placeholder="이름"/>
				</p>
				
				<p class="ppap">
					<input type="text" name="mem_email" value="" placeholder="이메일"/>
				</p>
				
				<p class="ppap">
					<input type="text" name="mem_number" value="" placeholder="전화번호"/>
				</p>
			
				<p class="ppap">
					<input type="number" name="mem_age" value="" placeholder="나이"/>
				</p>
			</form>
		</section>
	</main>
	<script type="text/javascript">
	$("#initBtn").click(function(){
		 location.reload();
	})	
	$("#regBtn01").click(function(){
		if(confirm("등록하시겠습니까?")){
			$("form").submit()
		}
	})
	</script>
</body>
</html>