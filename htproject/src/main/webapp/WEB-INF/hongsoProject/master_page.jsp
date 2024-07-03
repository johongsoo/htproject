<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
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
			width: 27%;
		}
	
		
        #top-lign{
        	height:150px;
        	background:#c0c0c0;
            display: flex;
            justify-content: center;
            align-items: center;
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
		.dispatch_list .id{
			width:13%;
		}
		.dispatch_list .authority{
			width:10%;
		}
		
		/* 게시판 목록의 제목 열 설정 */
		.dispatch_list .pwd{
			width:10%;
		}
		
		
		/* 게시판 목록의 작성자 열 설정 */
		.dispatch_list .name{
			width:13%;
		}
		
		/* 게시판 목록의 날짜 열 설정 */
		.dispatch_list .age{
			width:13%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.dispatch_list .email{
			width:20%;
		}
		/* 게시판 목록의 조회수 열 설정 */
		.dispatch_list .number{
			width:20%;
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
 
            // 추가된 코드: insBtn 클릭 이벤트 설정
            $("#insBtn").click(function(){
                console.log("등록 버튼이 클릭되었습니다.");
                 location.href="memberInsert.do"
                // 등록 버튼 클릭 시 수행할 동작을 여기에 추가합니다.
            });
	});
 </script>   
</head>
<body>

<div id="top-lign">
<h2>배차 정보 관리</h2>
</div>

<div class="search-box">
    <label for="m_id">아이디 :</label>
    <input type="text" id="m_id" name="m_id" placeholder="">
    <label for="m_name">이름 :</label>
    <input type="text" id="m_name" name="m_name" placeholder="">
    <button class="button join-button" onclick="search()">조회</button>
</div>
	<div class="dispatch_list_wrap">
		<div class="dispatch_list">
			<div class="top">
				<div class="id">아이디</div>
				<div class="authority">권한</div>
				<div class="pwd">비밀번호</div>
				<div class="name">이름</div>
				<div class="age">나이</div>
				<div class="email">이메일</div>
				<div class="number">전화번호</div>
			</div>
		<c:forEach var="info" items="${mlist}">
			<div ondblclick="detail(${info.m_unique})" id="list">
				<div class="id">${info.m_id}</div>
				<div class="authority">${info.m_authority}</div>
				<div class="pwd">${info.m_pwd}</div>
				<div class="name">${info.m_name}</div>
				<div class="age">${info.m_age}</div>
				<div class="email">${info.m_email}</div>
				<div class="number">${info.m_number}</div>
			</div>
		</c:forEach>
		</div>
		<div class="btn">
		 <button class="submit-button" id="insBtn">등록</button>	
		</div>
</div>
	<script type="text/javascript">
		function detail(m_unique){
			location.href="getMember.do?m_unique="+m_unique
		}
	</script>

</body>
</html>
