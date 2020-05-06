<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/safetyNavi.css">
<script type="text/javascript">
$(function() {
	$('.list_hide_div').hide();
	/* $('#loginOK_c').hide(); */
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
	$('#logoutbtn').click(function(){

		 location="../login/logout.jsp";
	});
	$('#mypagebtn').click(function(){

		 location="../login/logout.jsp";
	});


});


</script>
<div class="navi_menu_div">
            <div class="navi_logo_div"><!-- 로고 부분  -->
                <a href="../gabi/mainain.jsp" class="link"><img src="../image/sf_logo.png" alt="safetyLogo" id="navi_logo"/></a>
            </div>

            <div class="list_div"> <!-- 리스트 부분 -->
                <ul class="list_ul">
                    <li class="list_li">
                        <a href="../introduce/introduce.jsp" class="navi_a">소개</a>
                    </li>
                    <li class="list_li">
                        <a href="" class="navi_a">후원
                        </a>
                    </li>
                    <li class="list_li">
                        <a href="" class="navi_a">활동</a>
                    </li>
                    <li class="list_li">
                        <a href="../ServiceCenter/customer_center.jsp" class="navi_a">고객센터</a>
                    </li>
                </ul>
           	 </div><!-- 리스트 end -->

            <div class="navi_menu_icon_div"><!-- 아이콘 이미지 -->
            <% String se = (String)session.getAttribute("id");%>
	        <% if(se==null){%>
                <a href="../../gabi/login/safetyLogin.jsp"><img src="../image/sf_icon_login.png" alt="" id="navi_menu_icon"/></a>
                <% }else { %>

                <a href="마이페이지" id="loginOK_c" ><%=se %> 님 환영합니다. </a>
                <div class="plusbtn"> <!-- 로그인이 되면 바뀔곳 -->
					<input type="button" value="logout" id="logoutbtn"/>
					<input type="button" value="mypage" id="mypagebtn"/>
				</div>
 				<% } %>

            </div>

            <div class="support_btn_div"> <!-- 후원하기 버튼 -->
                <a href="../gabi/safetyLogin.jsp"><input type="button" value="후원하기" id="support_btn"/></a>
            </div>

        </div><!-- menu div end  -->

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

        <div class="list_hide_div">
            <div class="list_hide1">
                <ul class="hide_ul1">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../introduce/introduce.jsp" class="navi_hide_a">연혁/조직</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">ci소개</a>
                    </li>
                    <li class="hide_li">
                        <a href="../introduce/siteMap.jsp" class="navi_hide_a">사이트맵</a>
                    </li>
                    <li class="hide_li">
                        <a href="../introduce/map.jsp" class="navi_hide_a">위치정보</a>
                    </li>

                </ul>
            </div>

            <div class="list_hide2">

                <ul class="hide_ul2">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">단체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">개인후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">법인체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">후원금현황</a>
                    </li>

                </ul>
            </div>
            <div class="list_hide3">
                <ul class="hide_ul3">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">캠페인</a>
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">후원자프로그램</a> <!-- 미정  -->
                    </li>
                    <li class="hide_li">
                        <a href="" class="navi_hide_a">후원자선물가게</a><!-- 미정  -->
                    </li>

                </ul>
            </div>
            <div  class="list_hide4">
                <ul class="hide_ul4">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../ServiceCenter/question_answer.jsp" class="navi_hide_a">Q&A</a>
                    </li>
                    <li class="hide_li">
                        <a href="../ServiceCenter/help.jsp?fno=personal_infor" class="navi_hide_a">개인정보처리방침</a>
                    </li>
                    <li class="hide_li">
                        <a href="../ServiceCenter/help.jsp?fno=access" class="navi_hide_a">이용약관</a>
                    </li>


                </ul>
            </div>
        </div>
