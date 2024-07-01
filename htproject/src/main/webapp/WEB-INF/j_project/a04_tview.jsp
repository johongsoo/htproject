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
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link rel="stylesheet" href="${path}/semi-final/styles.css">
<style>
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
	
	});
</script>
</head>

<body>
<header>
        <div class="logo">
            <h1>휴먼철도 999</h1>
        </div>
        <div class="user-buttons33">
            <button class="upt-button33" onclick="location.href='semi-final/MainHome.jsp'">메인페이지로 이동</button>
        </div>
    </header>
    <nav class="nav33">
        <ul>
            <h2>예약한 열차 조회</h2>
        </ul>
    </nav>
    <main>
    	<section class="main-content">
    		<h2 style="margin-bottom: 40px;">열차정보</h2>
		<p class="ppap">
		ID : ${mem.mem_id}
		</p>
		<p class="ppap">
		탑승지 : ${mem.t_station }
		</p>
		<p class="ppap">
		열차종류 : ${mem.t_type }
		</p>
		<p class="ppap">
		열차번호 : ${mem.t_num }
		</p>
		<p class="ppap">
		출발지 : ${mem.t_depart }
		</p>
		<p class="ppap">
		도착지 : ${mem.t_arrival }
		</p>
		<p class="ppap">
		출발시간 : ${mem.t_departtime }
		</p>
		<p class="ppap">
		도착시간 : ${mem.t_arrivaltime }
		</p>
		<p class="ppap">
		날짜 : ${mem.t_date }
		</p>
    	</section>
    </main>
</body>
</html>