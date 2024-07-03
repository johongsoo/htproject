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
			width: 8%;
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
		.dispatch_list .num{
			width:10%;
		}
		
		/* 게시판 목록의 제목 열 설정 */
		.dispatch_list .depart{
			width:15%;
		}
		
		
		/* 게시판 목록의 작성자 열 설정 */
		.dispatch_list .arrive{
			width:15%;
		}
		
		/* 게시판 목록의 날짜 열 설정 */
		.dispatch_list .dtime{
			width:21%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.dispatch_list .atime{
			width:21%;
		}
		/* 게시판 목록의 조회수 열 설정 */
		.dispatch_list .station{
			width:15%;
		}
		            #modal.modal-overlay {
                width: 100%;
                height: 100%;
                position: absolute;
                left: 0;
                top: 0;
                display: none;
                align-items: center;
                justify-content: center;
                background: rgba(71, 58, 58, 0.25);     
            }
            #modal .modal-window {
                background: rgba(84, 93, 99, 0.7);      
                width: 400px;
                height: 200px;
                position: relative; 
            }
            
            #modal .title {
                padding-left: 10px;
                display: inline;
                color: white;
                
            }
            #modal .title h2 {
                display: inline;
            }
            
            #modal .content {
                margin-top: 20px;
                padding: 0px 10px;
                color: white;
            }

		
        .button {
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 4px;
        }
        .join-button{
        	background-color: #0067A3;
        }
		
        .edit-button {
            background-color: #4CAF50;
        }
        .delete-button {
            background-color: #f44336;
        }
    </style>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/a00_com/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#uptBtn").click(function(){
                location.href = "trainInsert.do";
            });

            // 추가된 코드: insBtn 클릭 이벤트 설정
            $("#insBtn").click(function(){
                console.log("등록 버튼이 클릭되었습니다.");
                 location.href="trainInsert.do"
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
    <label for="t_num">열차 번호 :</label>
    <input type="text" id="trainNumber" name="t_num" placeholder="0">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="t_depart">출발지 :</label>
    <input type="text" id="departureStation" name="t_depart" placeholder="출발지">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="t_arrive">도착지 :</label>
    <input type="text" id="arrivalStation" name="t_arrive" placeholder="도착지">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="t_station">승차역 :</label>
    <input type="text" id="date" name="t_station" placeholder="승차역">
    <button class="button join-button" onclick="search()">조회</button>
</div>
	<div class="dispatch_list_wrap">
		<div class="dispatch_list">
			<div class="top">
				<div class="num">번호</div>
				<div class="depart">출발역</div>
				<div class="arrive">도착역</div>
				<div class="dtime">출발시간</div>
				<div class="atime">도착시간</div>
				<div class="station">승차역</div>
			</div>
		<c:forEach var="info" items="${train}">
			<div>
				<div class="num">${info.t_num }</div>
				<div class="depart">${info.t_depart}</div>
				<div class="arrive">${info.t_arrive}</div>
				<div class="dtime">${info.t_dtime}</div>
				<div class="atime">${info.t_atime}</div>
				<div class="station">${info.t_station}</div>
			</div>
		</c:forEach>
		 <button class="button" id="insBtn">등록</button>	
		</div>
		


        <div id="modal" class="modal-overlay">
            <div class="modal-window">
                <div class="title">
                    <h2>제목</h2>
                </div>
                <div class="content">
                    
            	
                </div>
                <button class="button" id="closebtn">닫기</button>
            </div>
         </div>

	
	<div>
     <button class="button" id="btn-modal">등록</button>
     <button class="button edit-button" in="uptBtn">수정</button>
     <button class="button delete-button">삭제</button>
	</div>
</div>
 <script type="text/javascript">

 

        const modal=document.getElementById("modal")
        function modalOn(){
            modal.style.display="flex"

        }
        function isModalOn(){
            return modal.style.display === "flex"
        }
        function modalOff() {
            modal.style.display = "none"
        }
        const btnModal = document.getElementById("btn-modal")

        btnModal.addEventListener("click", e => {
                modalOn()
            })

    </script>

</body>
</html>
