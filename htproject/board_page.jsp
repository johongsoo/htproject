<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>고객 센터 문의 게시판</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        h2 {
            text-align: center;
        }
        .description {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-box {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
        .search-box select, .search-box input, .search-box button {
            margin: 0 10px;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        .pagination, .page-navigation {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
        .pagination button, .page-navigation input {
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
        .register-button {
            margin: 20px 0;
            text-align: center;
        }
        .register-button button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>고객 센터 문의 게시판</h2>
<p class="description">고객님들의 문의 사항을 자유롭게 남겨주세요<br>친절히 순차적으로 답변드리겠습니다.</p>

<div class="search-box">
    <select>
        <option>-- 검색 선택 --</option>
    </select>
    <input type="text" placeholder="검색어를 입력해주세요.">
    <button onclick="search()">검색</button>
    <button onclick="reset()">초기화</button>
</div>

<table>
    <thead>
        <tr>
            <th>No</th>
            <th>제목</th>
            <th>등록자 명</th>
            <th>등록일</th>
            <th>조회수</th>
        </tr>
    </thead>
    <tbody>

            <tr>
                <td>1</td>
                <td>안녕하세여</td>
                <td>홍길동</td>
                <td>2024-06-24</td>
                <td>0</td>
            </tr>

    </tbody>
</table>

<div class="page-navigation">
    <label for="page">페이지 이동</label>
    <input type="text" id="page" name="page" value="1">
    <button onclick="goToPage()">이 동</button>
</div>

<div class="pagination">
    <button> < </button>
    <button class="active">1</button>
    <button>2</button>
    <button>3</button>
    <button>4</button>
    <button> > </button>
</div>

<div class="register-button">
    <button onclick="register()">등록</button>
</div>

<script>
    function search() {
        // Implement search functionality here
        alert("Search functionality to be implemented");
    }
    
    function reset() {
        // Implement reset functionality here
        alert("Reset functionality to be implemented");
    }
    
    function goToPage() {
        // Implement page navigation functionality here
        alert("Go to page functionality to be implemented");
    }
    
    function register() {
        // Implement register functionality here
        alert("Register functionality to be implemented");
    }
</script>
</body>
</html>
