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
.join-wrapper{
    width: 420px;
    padding: 40px;
    box-sizing: border-box;
    border:1px solid #cccccc;
    border-radius: 5%;
    box-shadow: 1px 1px 1px 1px gray;
    background-color: #fff;
}

.join-wrapper>a {
	text-decoration:none;
	color:#F8F8F8;
}

.join-wrapper > h2{
    font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
    text-align: center;
}

.join-wrapper .modal-btn {
    color: #fff;
    font-size: 14px;
    background-color: #6A24FE;
    padding: 5px 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    margin-bottom: 10px;
}
.join-wrapper #page{
	background-color: #6A24FE;
}
.join-wrapper .modal-btn:hover {
    background-color: #218838;
}
#join-wrapper > input[type="checkbox"]{
    display: none;
}
#join-wrapper > label{
    color: #999999;
}
#join-wrapper input[type="checkbox"] + label{
    cursor: pointer;
    padding-left: 26px;
    background-image: url("checkbox.png");
    background-repeat: no-repeat;
    background-size: contain;
}
.join-wrapper input[type="checkbox"]:checked + label{
    background-image: url("checkbox-active.png");
    background-repeat: no-repeat;
    background-size: contain;
}
.join-wrapper .submit-btn {
    color: #fff;
    font-size: 16px;
    background-color: #28a745;
    padding: 10px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    display: block;
    width: 100%;
    text-align: center;
    margin-top: 20px;
}

.join-wrapper #page:hover {
    background-color: #218838;
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

		
		$("#allAgree").change(function(){
            $("input[type=checkbox]").prop('checked', $(this).prop('checked'));
        });
        
        $("input[type=checkbox]").not("#allAgree").change(function(){
            if (!$(this).prop("checked")){
                $("#allAgree").prop("checked", false);
            }
        });
        
        $("#page").click(function() {
            if (!$("#termsAgree").prop("checked") || !$("#privacyAgree").prop("checked") || !$("#thirdPartyAgree").prop("checked")) {
                alert("필수 항목을 체크해주세요!");
            } else {
                location.href="secondPage.do";
            }
        });
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
        <h2>회원가입</h2><br>
        
        <h5>1. 휴먼철도999 회원 약관 동의</h5><br>
        <button id="modalBtn" class="modal-btn">약관보기</button><br>
        <input type="checkbox" name="termsAgree" id="termsAgree">
        <label for="termsAgree">회원약관 동의(필수)</label>
        <hr><br>
        
        <h5>2. 개인정보 수집 및 이용에 대한 안내</h5><br>
        <button id="modalBtn2" class="modal-btn">약관보기</button><br>
        <input type="checkbox" name="privacyAgree" id="privacyAgree">
        <label for="privacyAgree">개인정보 수집 및 이용동의(필수)</label><br>
        
        <input type="checkbox" name="thirdPartyAgree" id="thirdPartyAgree">
        <label for="thirdPartyAgree">개인정보의 제3자 제공 동의(필수)</label><br>
        
        <input type="checkbox" name="marketingAgree" id="marketingAgree">
        <label for="marketingAgree">마케팅/홍보에 개인정보 이용 동의(선택)</label><br>
        
        <input type="checkbox" name="allAgree" id="allAgree">
        <label for="allAgree">전체 약관동의</label>
        
        <button type="button" id="page" class="submit-btn">다음</button>
    </div>

</div>

</body>
</html>
