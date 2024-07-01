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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<link rel="stylesheet" href="${path}/semi-final/styles.css">

<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<style>

</style>
</head>

<body>
		
<header>
		<div class="logo">
			<h1>휴먼철도 999</h1>
		</div>
		<div class="user-buttons">
			<button class="goupt-button" id="gogoBtn">회원수정</button>
			<button class="home-button">홈으로</button>
		</div>
	</header>
	<nav>
		<ul>
			<h2>회원정보</h2>
		</ul>
	</nav>
	<main>
		<section class="mem-content">
		
		<h2 style="margin-bottom: 40px;">아이디,비밀번호</h2>
		<p class="ppap">
		ID : ${mem.mem_id}
		</p>
		<p class="ppap">
		PWD : ${mem.mem_pwd }
		</p>

		</section>
		
		<section class="mem-content">
		
		<h2>개인정보</h2>
		<button class="viewTrain-button" id="view_t">열차조회</button>
		<p class="ppap">
		NAME : ${mem.mem_name }
		</p>
		<p class="ppap">
		EMAIL : ${mem.mem_email }
		</p>
		<p class="ppap">
		NUMBER : ${mem.mem_number }
		</p>
		<p class="ppap">
		AGE : ${mem.mem_age }
		</p>
		</section>
	</main>
	<script type="text/javascript">
		$("#gogoBtn").click(function(){
			
			location.href="mem02.do?mem_id=${mem.mem_id}"
			})
		$("#view_t").click(function(){
			
			location.href="train.do?mem_id=${mem.mem_id}"
			})
		
	</script>	

</body>
	
</html>