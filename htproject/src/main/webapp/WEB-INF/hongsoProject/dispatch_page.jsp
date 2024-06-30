<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>


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
        
        .train_list {
			width: 70%;
			border-top: 2px solid #000;
  		    position:relative;
 		    left:15%;
		}
		
		.train_list div> div{
			border-bottom: 1px solid #ddd;
			font-size:0;
		}
        
        .train_list div>div{
        	display:inline-blcok;
        	font-size:1rem;
        }
		
		/* 게시판 목록의 번호 열 설정 */
		.train_list .no{
			width:10%;
		}	

		/* 게시판 목록의 제목 열 설정 */
		.train_list .train{
			width:15%;
			text-align: left;
		}
		
		/* 게시판 목록 상단의 제목 열 설정 */
		.train_list .top .title{
			text-align: center;
		}
		
		/* 게시판 목록의 작성자 열 설정 */
		.train_list .departure_point{
			width:15%;
		}
		
		/* 게시판 목록의 날짜 열 설정 */
		.train_list .destination{
			width:15%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.train_list .date{
			width:15%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.train_list .departure_time{
			width:15%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.train_list .arrival_time{
			width:15%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.train_list .to_revise{
			width:10%;
		}
		
		/* 게시판 목록의 조회수 열 설정 */
		.train_list .to_delete{
			width:10%;
		}
		
		/* 페이지 번호 네비게이션 설정 */
		.board_page{
			margin-top:30px;
			text-align:center;
			font-size: 0;
		}
		
        .edit-button {
            background-color: #4CAF50;
        }
        .delete-button {
            background-color: #f44336;
        }
    </style>
</head>
<body>
<div>
<div id="top-lign">
<h2>배차 정보 관리</h2>
</div>

<div class="search-box">
    <label for="trainNumber">열차 번호 :</label>
    <input type="text" id="trainNumber" name="trainNumber" placeholder="열차 번호">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="departureStation">출발지 :</label>
    <input type="text" id="departureStation" name="departureStation" placeholder="출발지">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="arrivalStation">도착지 :</label>
    <input type="text" id="arrivalStation" name="arrivalStation" placeholder="도착지">
    <button class="button join-button" onclick="search()">조회</button>
    <label for="date">날짜 :</label>
    <input type="text" id="date" name="date" placeholder="날짜">
    <button class="button join-button" onclick="search()">조회</button>
</div>
	<div class="train_list">
		<div id="train">
			<div>
				<div class="no">열차 번호</div>
				<div class="train">열차 종류</div>
				<div class="departure_point">출발지</div>
				<div class="destination">도착지</div>
				<div class="date">출발 시간</div>
				<div class="departure_time">도착 시간</div>
				<div class="arrival_time">운행 날짜</div>
				<div class="to_revise">수정</div>
				<div class="to_delete">삭제</div>
			</div>
			<div>
				<div class="no">열차 번호</div>
				<div class="train">열차 종류</div>
				<div class="departure_point">출발지</div>
				<div class="destination">도착지</div>
				<div class="date">출발 시간</div>
				<div class="departure_time">도착 시간</div>
				<div class="arrival_time">운행 날짜</div>
				<div class="to_revise">수정</div>
				<div class="to_delete">삭제</div>
			</div>
		</div>
	</div>
	<div class="train_info">
		
	</div>


            
     <td><button class="button edit-button" onclick="editTrain('${train.train_number}')">수정</button></td>
     <td><button class="button delete-button" onclick="deleteTrain('${train.train_number}')">삭제</button></td>
</div>
<script>
    function search() {
        // Implement search functionality here
        alert("Search functionality to be implemented");
    }
    
    function editTrain(trainNumber) {
        // Implement edit functionality here
        alert("Edit functionality to be implemented for Train Number: " + trainNumber);
    }
    
    function deleteTrain(trainNumber) {
        // Implement delete functionality here
        alert("Delete functionality to be implemented for Train Number: " + trainNumber);
    }
</script>
</body>
</html>
