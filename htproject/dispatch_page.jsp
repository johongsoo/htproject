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
            margin-bottom: 20px;
        }
        .search-box label, .search-box input, .search-box button {
            margin: 0 10px;
        }
        table {
            width: 70%;
            border-collapse: collapse;
            margin-bottom: 20px;
            position:relative;
            left:15%;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
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
        #trfirst{
        	background-color: #c0c0c0;
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
<div id="top-lign">
<h2>배차 정보 관리</h2>
</div>
<br><br>
<br><br>
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
<br><br>
<hr>
<br><br>
<table>
    <thead>
        <tr id="trfirst">
            <th>열차 번호</th>
            <th>열차 종류</th>
            <th>출발지</th>
            <th>도착지</th>
            <th>출발 시간</th>
            <th>도착 시간</th>
            <th>날 짜</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
    </thead>
    <tbody>

            <tr>
                <td>열차</td>
                <td>종류</td>
                <td>출발지</td>
                <td>도척차</td>
                <td>출발시간</td>
                <td>도척사건</td>
                <td>날짜</td>
                <td><button class="button edit-button" onclick="editTrain('${train.train_number}')">수정</button></td>
                <td><button class="button delete-button" onclick="deleteTrain('${train.train_number}')">삭제</button></td>
            </tr>

    </tbody>
</table>

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
