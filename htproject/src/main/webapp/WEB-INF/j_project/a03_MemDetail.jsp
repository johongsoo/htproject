<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link rel="stylesheet" href="${path}/semi-final/styles.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

<style>
    .body33 {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
    }

    .header33 {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: #2980b9;
        color: white;
    }

    .logo33 h1 {
        margin: 0;
    }

    .user-buttons33 button {
        margin-left: 10px;
    }

    .nav33 h2 {
        margin: 20px;
    }

    .main33 {
        padding: 20px;
    }

    .mem-content33 {
        margin-bottom: 40px;
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .mem-content33 h2 {
        margin-bottom: 20px;
    }

    .mem-content33 p {
        margin-bottom: 15px;
    }

    .mem-content33 input {
        width: calc(100% - 20px);
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 1rem;
        transition: border-color 0.3s ease;
    }

    .mem-content33 input:focus {
        border-color: #2980b9;
        outline: none;
    }

    .viewTrain-button33 {
        margin-bottom: 20px;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        background-color: #2980b9;
        color: #fff;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    .viewTrain-button33:hover {
        background-color: #2c3e50;
    }

    .upt-button33, .del-button33 {
        padding: 10px 20px; /* 버튼 안의 텍스트 여백 증가 */
        border: none;
        border-radius: 4px;
        background-color: #2980b9; /* 버튼 파란색 배경 */
        color: #fff; /* 버튼 글자색 */
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* 그림자 추가 */
    }

    .upt-button33:hover{
        background-color: #2c3e50; /* 호버 시 버튼 색상 변화 */
    }
    .del-button33:hover{
        background-color: red; /* 호버 시 버튼 색상 변화 */
    }
</style>
</head>

<body class="body33">
<form method="post" action="memDelete100.do">
<header class="header33">
        <div class="logo33">
            <h1>휴먼철도 999</h1>
        </div>
        <div class="user-buttons33">
            <button class="upt-button33" id="uptBtn">수정하기</button>
            <button class="del-button33" id="delBtn">탈퇴하기</button>
        </div>
    </header>
    <nav class="nav33">
        <ul>
            <h2>회원정보수정</h2>
        </ul>
    </nav>
    <main class="main33">
        <section class="mem-content33">
        <h2 style="margin-bottom: 40px;">아이디,비밀번호</h2>
        
        <p class="ppap33">
		<input name="mem_id" class="input33" value="${mem.mem_id }" readonly/>
		</p>
        
        <p class="ppap33">
            <input type="password" name="mem_pwd" class="input33" value="${mem.mem_pwd }"/>
        </p>
        
        </section>
        
        <section class="mem-content33">
        <h2>개인정보</h2>
        
        <p class="ppap33">
            <input type="text" name="mem_name" class="input33" value="${mem.mem_name }"/>
        </p>
        
        <p class="ppap33">
            <input type="text" name="mem_email" class="input33" value="${mem.mem_email }"/>
        </p>
        
        <p class="ppap33">
            <input type="text" name="mem_number" class="input33" value="${mem.mem_number }"/>
        </p>
        
        <p class="ppap33">
            <input type="number" name="mem_age" class="input33" value="${mem.mem_age }"/>
        </p>
        
        <button class="viewTrain-button33">열차조회</button>
        
        </section>
    </main>
</form>
<script type="text/javascript">
    $(document).ready(function() {
        // Enter 키 입력 시 form submit 방지
        $("form").on("keydown", function(event) {
            if (event.key === "Enter") {
                event.preventDefault();
                return false;
            }
        });

        // 메시지 처리
        var msg = "${msg}";
        var proc = "${proc}";
        if (msg !== "") {
            alert(msg);
            if (proc === "삭제") {
                alert("조회화면이동");
                location.href = "semi-final/MainHome.jsp";
            }
        }
    });

    $("#uptBtn").click(function(){
    	if(confirm("수정하시겠습니까?")){
    		$("form").attr("action","memUpdate100.do");
			$("form").submit();	  
			// $("form")[0].reset() 반드시 배열로 선언해야 처리가 된다.(초기화시)  		
			// $("form")[0].submit() $("form").submit() 둘다 사용가능..		
    	}
    })
    $("#delBtn").click(function(){
    	if(confirm("삭제하시겠습니까?")){
			// 유효성 check 필요시 처리..
			/*
			$("form").attr("action","deleteEmp.do");
			$("form")[0].submit();   document.querySelector("form").submit();
			*/	    	
			location.href="memDelete100.do?mem_id=${mem.mem_id}"
    	}
    })
</script>
</body>
</html>
