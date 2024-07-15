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
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
*{
   padding: 0;
   margin: 0;
   border: none;
}
body{
    font-size: 14px;
    font-family: 'Roboto', sans-serif;
}

.container{
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
}
.login-wrapper{
    width: 400px;
    height: 400px;
    padding: 40px;
    box-sizing: border-box;
}

.login-wrapper>a {
	text-decoration:none;
	color:#F8F8F8;
}


.login-wrapper > h2{
    font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
}
#login-form > input{
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}
#login-form > input::placeholder{
    color: #D2D2D2;
}
#login-form > input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #6A24FE;
    margin-top: 20px;
}
#login-form > input[type="checkbox"]{
    display: none;
}
#login-form > label{
    color: #999999;
}
#login-form input[type="checkbox"] + label{
    cursor: pointer;
    padding-left: 26px;
    background-image: url("checkbox.png");
    background-repeat: no-repeat;
    background-size: contain;
}
#login-form input[type="checkbox"]:checked + label{
    background-image: url("checkbox-active.png");
    background-repeat: no-repeat;
    background-size: contain;
}
.login-wrapper{
	border:1px solid black;
	border-radius: 10%;
	box-shadow:1px 1px 1px 1px gray;
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

    <div class="login-wrapper">
        <h2>Login</h2>
        <form method="post" action="서버의url" id="login-form">
            <input type="text" name="userName" placeholder="I  D">
            <input type="password" name="userPassword" placeholder="Password">
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label><br>
            <a href="Joinfirst.do">회원가입</a><Br>
            <a href="#">아이디</a> / <a href="#">비밀번호 찾기</a>
            <input type="submit" value="Login">
        </form>
    </div>

</div>

</body>
</html>