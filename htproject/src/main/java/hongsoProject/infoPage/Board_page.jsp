<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<%
    String path = request.getContextPath();
%>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>배차 정보 관리</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        
        
        h2 {
            text-align: center;
        }
        .search-box {
            text-align: center;
            margin-top:40px;
            margin-bottom: 20px;
            
        }
        .search-box input[type="text"]{
			padding: 10px;
			box-sizing: border-box;
			width: 20%;
		}
	
		
        #top-lign{
        	height:150px;
        	background:#c0c0c0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    	
    	.main{
		    position: relative;
            background-image: url('');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat; 
           z-index: 5;
			background-size: 800px;
		
		}
    	
    	/* 게시판 랩(전체 게시판을 감싸는 컨테이너) 설정 */
		.dispatch_wrap{
			width:1000px;
			margin:100px auto;
			text-align:center;

		}

		
		/* 게시판 랩 내부의 strong 태그 설정 */
		.dispatch_wrap>strong{
			font-size:3rem;
		}
		
		/* 게시판 제목 섹션 설정 */
		.dispatch_title{
			margin-bottom:30px;
		}
		
		/* 게시판 제목 섹션 내부의 strong 태그 설정 */
		.dispatch_title strong {
			font-size: 3rem;
		}
		
		/* 게시판 제목 섹션 내부의 p 태그 설정 */
		.dispatch_title p {
			margin-top:5px;
			font-size: 1.4rem;
		}
    	/* 게시판 목록 설정 */
		.dispatch_list {
			width: 70%;
			border:1px solid #000;
			border-top: 2px solid #000;
		    position:relative;
		    left:15%;
		}
		
		/* 게시판 목록 내부의 div 설정 */
		.dispatch_list > div{
			border-bottom: 1px solid #ddd;
			font-size:0;
		}
		
		/* 게시판 목록의 상단(div.top) 설정 */
		.dispatch_list > div.top {
			border-color: #999;
		}
		
		/* 게시판 목록의 마지막 div 설정 */
		.dispatch_list > div:last-child{
			border-bottom: 1px solid #000;
		}
		
		/* 게시판 목록 내부의 자식 div 설정 */
		.dispatch_list > div > div{
			display: inline-block;
			padding: 15px 0;
			font-size:1rem;
			text-align: center;
		}
		
		/* 게시판 목록 상단(div.top) 내부의 자식 div 설정 */
		.dispatch_list > div.top > div{
			font-weight:600;
		}
		
		/* 게시판 목록의 번호 열 설정 */
		.dispatch_list .no{
			width:10%;
		}
		.dispatch_list .title{
			width:45%;
		}
		
		/* 게시판 목록의 제목 열 설정 */
		.dispatch_list .writer{
			width:15%;
		}
		
		
		/* 게시판 목록의 작성자 열 설정 */
		.dispatch_list .date{
			width:20%;
		}
		
		/* 게시판 목록의 날짜 열 설정 */
		.dispatch_list .views{
			width:10%;
		}
		.hover:hover{
			opacity:0.8;
			border:1px solid skyblue;
		}
        .button {
            padding: 10px 15px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 4px;
        }
        .join-button{
        	background-color: #0067A3;
        }

        .submit-button {
        	padding: 20px 25px;
            color: white;
            border: none;
            border-radius: 4px;
            background-color: black;
            font-size:1.4rem;
            cursor: pointer;
        }
        .btn{
			margin-top:30px;
			text-align:center;
        }
        
        #list:hover{
        	cursor: pointer;
        }
    </style>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/a00_com/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
 
            $("#insBtn").click(function(){
            	alert("배차 등록 페이지로이동.");
                 location.href="BoardInsert.do"
            });
	});
 </script>   
</head>
<body>

<div id="top-lign">
<h2>고객 문의</h2>
</div>

<div class="search-box">
	<form>
    <label for="t_depart">검색어 :</label>
    <input type="text" id="departureStation" name="b_title" value="${param.b_title }" placeholder="검색어를 입력해주세요">
    <input type="text" id="departureStation" name="m_name" value="${param.m_name }" placeholder="검색어를 입력해주세요">
    <button class="button join-button" onclick="search()">조회</button>
    </form>
</div>

	<div class="dispatch_list_wrap">
<div class="main">
		<div class="dispatch_list">
			<div class="top">
				<div class="no">글번호</div>
				<div class="title">제목</div>
				<div class="writer">작성자</div>
				<div class="date">등록일</div>
				<div class="views">조회수</div>
			</div>
		<c:forEach var="b" items="${blist}">
			<div class="hover" ondblclick="detail(${b.b_no})" id="list">
				<div class="no">${b.b_no}</div>
				<div class="title">${b.b_title}</div>
				<div class="writer">${b.m_name}</div>>
				<div class="date">${b.b_date}</div>
				<div class="views">${b.b_cnt}</div>
			</div>
		</c:forEach>
		</div>
</div>
</div>
		<div class="btn">
		 <button class="submit-button" id="insBtn">등록</button>	
		</div>

	<script type="text/javascript">
	
		function detail(b_no){
			location.href="getBoardinfo.do?b_no="+b_no
		}
	</script>

</body>
</html>
