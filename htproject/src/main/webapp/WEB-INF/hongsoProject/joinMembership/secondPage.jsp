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
<title>Sign Up</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
* {
    padding: 0;
    margin: 0;
    border: none;
}
body {
    font-size: 14px;
    font-family: 'Roboto', sans-serif;
}

.container {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f8f9fa;
}

.join-wrapper {
    width: 420px;
    padding: 40px;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    border-radius: 15px;
    box-shadow: 1px 1px 10px gray;
    background-color: #fff;
}

.join-wrapper > h2 {
    font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
    text-align: center;
}

.join-wrapper .input-group {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.join-wrapper .input-label {
    width: 80px;
    font-weight: bold;
    color: #000;
}

.join-wrapper .input-field {
    width: calc(100% - 90px);
    height: 40px;
    margin-right: 10px;
    padding: 0 10px;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    border-radius: 4px;
}

.join-wrapper .btn-check {
    height: 40px;
    padding: 0 10px;
    background-color: #6A24FE;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.join-wrapper .btn-check:hover {
    background-color: #218838;
}

.join-wrapper .btn-submit {
    color: #fff;
    font-size: 16px;
    background-color: #6A24FE;
    padding: 10px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    display: block;
    width: 100%;
    text-align: center;
    margin-top: 20px;
}

.join-wrapper .btn-submit:hover {
    background-color: #218838;
}

.join-wrapper .full-width {
    width: 100%;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function(){
        // Add any JavaScript code here if needed
    });
</script>
</head>

<body>
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="Mainpage.do">초기화면</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Joinfirst.do">회원가입</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">고객센터</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">휴먼 철도999</a>
  </li>
</ul>


<div class="container">
    <div class="join-wrapper">
        <h2>회원 가입 정보</h2>
        <form id="signUpForm" action="register.do" method="POST">
            <div class="input-group">
                <label class="input-label" for="name">이름</label>
                <input type="text" class="input-field" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label class="input-label" for="dob">생년월일</label>
                <input type="date" class="input-field" id="dob" name="dob" required>
            </div>
            <div class="input-group">
                <label class="input-label" for="username">아이디</label>
                <input type="text" class="input-field" id="username" name="username" required>
                <button type="button" class="btn-check">중복 확인</button>
            </div>
            <div class="input-group">
                <label class="input-label" for="password">패스워드</label>
                <input type="password" class="input-field" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label class="input-label" for="confirmPassword">패스워드<br>확인</label>
                <input type="password" class="input-field" id="confirmPassword" name="confirmPassword" required>
                <button type="button" class="btn-check">일치 확인</button>
            </div>
            <div class="input-group">
                <label class="input-label" for="email">Email</label>
                <input type="email" class="input-field full-width" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label class="input-label" for="phone">전화번호</label>
                <input type="tel" class="input-field full-width" id="phone" name="phone" required>
            </div>
            <button type="submit" class="btn-submit">등   록</button>
        </form>
    </div>
</div>

</body>
</html>
