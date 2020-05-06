<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyNavi</title>
<link rel="stylesheet" href="01safetyNavi.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('.list_hide_div').hide();
	$('#loginOK_c').hide();
	$('.list_li').mouseover(function(){

		$(this).css('border-bottom','2px solid #72cbf3');


	});
	$('.list_li').mouseout(function(){
		$(this).css('border-bottom','0px');



	});

	$('.navi_menu_div').mouseover(function(){
		$('.list_hide_div').show();


	});
	$('.list_hide_div').mouseover(function(){
		$('.list_hide_div').show();


	});
	$('.list_hide_div').mouseout(function(){
		$('.list_hide_div').hide();


	});


});


</script>

</head>

    <body>
        <div class="navi_menu_div">
            <div class="navi_logo_div"><!-- 로고 부분  -->
                <a href="../gabi/safetyMain.jsp" class="link"><img src="logo.png" alt="safetyLogo" id="navi_logo"/></a>
            </div>

            <div class="list_div"> <!-- 리스트 부분 -->
                <ul class="list_ul">
                    <li class="list_li">
                        <a href="introduce.jsp" class="navi_a">소개</a>
                    </li>
                    <li class="list_li">
                        <a href="" class="navi_a">후원
                        </a>
                    </li>
                    <li class="list_li">
                        <a href="customer_center.jsp" class="navi_a">활동</a>
                    </li>
                    <li class="list_li">
                        <a href="" class="navi_a">고객센터</a>
                    </li>
                </ul>
           	 </div><!-- 리스트 end -->

            <div class="navi_menu_icon_div"><!-- 아이콘 이미지 -->
                <a href="../../gabi/login/safetyLogin.jsp"><img src="../../gabi/image/sf_icon_login.png" alt="" id="navi_menu_icon"/></a>
                <a href="../../gabi/login/safetyLogin.jsp" id="loginOK_c"> 님 환영합니다.</a> <!-- 로그인이 되면 바뀔곳 -->0
            </div>

            <div class="support_btn_div"> <!-- 후원하기 버튼 -->
                <a href="../gabi/safetyLogin.jsp"><input type="button" value="후원하기" id="support_btn"/></a>
            </div>

        </div><!-- menu div end  -->
        <div class="list_hide_div">
            <div class="list_hide1">
                <ul class="hide_ul1">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="introduce.jsp" class="navi_hide_a">연혁/조직</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">ci소개</a>
                    </li>
                    <li class="hide_li">
                        <a href="customer_center.jsp" class="navi_hide_a">사이트맵</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">위치정보</a>
                    </li>

                </ul>
            </div>

            <div class="list_hide2">

                <ul class="hide_ul2">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="introduce.jsp" class="navi_hide_a">정기후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">개인후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="customer_center.jsp" class="navi_hide_a">후원금사용현황</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">후원금모집현황</a>
                    </li>

                </ul>
            </div>
            <div class="list_hide3">
                <ul class="hide_ul3">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="introduce.jsp" class="navi_hide_a">캠페인</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">후원자프로그램</a>
                    </li>
                    <li class="hide_li">
                        <a href="customer_center.jsp" class="navi_hide_a">후원자선물가게</a>
                    </li>


                </ul>
            </div>
            <div  class="list_hide4">
                <ul class="hide_ul4">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="introduce.jsp" class="navi_hide_a">Q&A</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">개인정보처리방침</a>
                    </li>
                    <li class="hide_li">
                        <a href="customer_center.jsp" class="navi_hide_a">이용약관</a>
                    </li>


                </ul>
            </div>
        </div>

    </body>

</html>

