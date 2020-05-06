<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>safetyLogin.jsp</title>
<link rel="stylesheet" href="../css/safetyLogin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	document.frm.id.focus();
	$('.login_btn').click(function() {
		if (document.frm.id.value == "") { alert("아이디를 입력해 주세요."); document.frm.id.focus(); return; }
		if (document.frm.pw.value == "") { alert("비밀번호를 입력해 주세요."); document.frm.pw.focus(); return; }

		document.frm.action="safetyLogin_OK.jsp"
		document.frm.method="get";
		document.frm.submit();
	/* 	$('.login_btn').submit();
		console.log("전송"); */
	});

	$('.SignUp_btn').click(function() {


	});
	/* $('#ckbox').click(function() {
		if (document.frm.ckbox.value == true) {
			String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것

			Cookie c = new Cookie("save ID", userID); //두개다 가지고 있어야 한다.
			c.setMaxAge(60*60*24); //시간
			c.setPath("/");

			response.addCookie(c); // 사용자 브라우저에 넣어주고 쿠치추가
			document.frm.id.value == c;
		}
	}); */
});


</script>


<%

Cookie[] clist =   request.getCookies(); //쿠기 가져오기
String id = null;

if(clist != null){
	for(Cookie c : clist){
		if(c.getName().equals("memberLogin")){
			id= URLDecoder.decode(c.getValue(), "UTF-8");
			response.sendRedirect("safetyLogin_welcome.jsp");
		}else{

		}
	}//for end

}//if(!null)end

%>



</head>
<body>




<div class="safetyLogin_full">
<jsp:include page="../etc/sf_nav.jsp" />
	<div class="inner"> <!-- 로그인   -->
	 <div>  <!-- title -->
   	  <h1 id="login_title">세이프티 로그인</h1>
	 </div>

	  <div>
		<form action="safetyLogin_OK.jsp"  method="get" name="frm" id="frm">
			<input type="text" name="id" id="id" placeholder="아이디" autofocus="autofocus" style="padding-left: 10px;" required  > <br />
			<input type="password" name="pw"id="pw" placeholder="패스워드"  style="padding-left: 10px;" required>

			<input type="button" value="로그인" class="login_btn"  >
			<input type="button" value="회원가입"class="SignUp_btn" ><br />

			<div id="ckbox_div"> <!-- 아이디 저장 -->

			 	<input type="checkbox" id="ckbox" name="ckb" value="true">
 			 	<label id ="ckbox_lb" for="ckb">아이디 저장</label><br>
			</div>

			<div class="find_div"><!-- 아이디 비번 찾기 div-->
  				<a href="../../gabi/login/safetyFind_ID.jsp" class="find_a">아이디 찾기&ensp;|</a>
			 	<a href="../../gabi/login/safetyFind_PW.jsp" class="find_a">&ensp; 비밀번호 찾기</a>
			</div>

		</form>
	  </div>

	</div>
</div>
</body>
</html>
