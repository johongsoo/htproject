<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자 회원 정보 관리</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
        }
        .search-box {
        	background:;
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
        .join-button {
        	background-color: #0067A3;
        }
        .mainpage-button{
        	background-color: #c0c0c0;
        }
        #trlign {
        	background-color: #4CAF50;
        }
        .edit-button {
            background-color: #4CAF50;
        }
        .delete-button {
            background-color: #f44336;
        }
        .pagination {
            text-align: center;
        }
        .pagination button {
            margin: 0 5px;
            padding: 5px 10px;
            border: 1px solid #ddd;
            background-color: white;
            cursor: pointer;
        }
        .pagination button.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
<div id="top-lign">
<h2>관리자 회원 정보 관리</h2>
</div>
<br><br><br>
<div class="search-box">
    <label for="userId">ID :</label>
    <input type="text" id="userId" name="userId" placeholder="사용자 ID">
    <label for="userName">이름 :</label>
    <input type="text" id="userName" name="userName" placeholder="이름을 입력해주세요">
    <label for="userEmail">이메일 :</label>
    <input type="text" id="userEmail" name="userEmail" placeholder="이메일을 입력해주세요">
    <button class="button join-button" onclick="search()">조회</button>
    <button class="button mainpage-button" onclick="window.location.href='mainPage.jsp'">메인 페이지</button>
</div>

<table>
    <thead>
        <tr id="trlign">
            <th>사용자 ID</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>나이</th>
            <th>전화번호</th>
            <th>이메일</th>
            <th>사는곳</th>
            <th>생년월일</th>
            <th>가입날짜</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
    </thead>
    <tbody>

            <tr>
                <td>id</td>
                <td>*******</td>
                <td>name</td>
                <td>age</td>
                <td>phone</td>
                <td>mail</td>
                <td>address</td>
                <td>birthdate</td>
                <td>joindate</td>
                <td><button class="button edit-button" onclick="editMember('${member.id}')">수정</button></td>
                <td><button class="button delete-button" onclick="deleteMember('${member.id}')">삭제</button></td>
            </tr>

    </tbody>
</table>

<div class="pagination">
    <button> < </button>
    <button class="active">1</button>
    <button>2</button>
    <button> > </button>
</div>

<script>
    function search() {
        // Implement search functionality here
        alert("Search functionality to be implemented");
    }
    
    function editMember(id) {
        // Implement edit functionality here
        alert("Edit functionality to be implemented for ID: " + id);
    }
    
    function deleteMember(id) {
        // Implement delete functionality here
        alert("Delete functionality to be implemented for ID: " + id);
    }
</script>
</body>
</html>
