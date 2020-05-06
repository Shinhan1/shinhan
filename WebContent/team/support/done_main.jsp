
<%@page import="vo.DNVO"%>
<%@page import="dao.DNDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="../css/done_main.css">

<%@include file="safetyNavi.jsp" %>
<meta charset="UTF-8">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {

   // 배너의 위치를 가져와 저장
   var floatPosition = parseInt($("#floatMenu").css('top'));
 

   $(window).scroll(function() {
      // 현재 스크롤 위치를 가져온다.
      var scrollTop = $(window).scrollTop();
      var newPosition = scrollTop + floatPosition + "px";



      $("#floatMenu").stop().animate({
         "top" : newPosition
      }, 000);

   }).scroll();

});
</script>

<title>Insert title here</title>
<!-- <style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Varela+Round);



html, body {
   background:  url("https://codepen.io/images/classy_fabric.png");
}

.slides { /* 좌우 변경 패널버튼 포지션 */
   padding: 0;
   width: 1050px;
   height: 420px;
   display: block;
   /* margin-left:600px; */
   margin-left: 425px;
   margin-right: 425px;
   margin-top: 450px;
   position: relative;

}

.slides * {
   user-select: none;
   -ms-user-select: none;
   -moz-user-select: none;
   -khtml-user-select: none;
   -webkit-user-select: none;
   -webkit-touch-callout: none;
}

.slides input {
   display: none;
}

.slide-container {
   display: block;
}

.slide { /* 중앙 픽쳐 포지션  */
   top: 0;
   opacity: 0;
   width: 1050px;
   height: 420px;
   display: block;
   position: absolute;
   transform: scale(0);
   transition: all .7s ease-in-out;
   /* margin-top: 0px; */
}

.slide img {
   width: 100%;
   height: 100%;
}

.navii label { /* 좌우 변경 패널버튼 */
   width: 200px;
   height: 100%;
   display: none;
   position: absolute;
   opacity: 0;
   z-index: 9;
   cursor: pointer;
   transition: opacity .2s;
   color: #FFF;
   font-size: 156pt;
   text-align: center;
   line-height: 380px;
   font-family: "Varela Round", sans-serif;
   background-color: rgba(0, 0, 0, .3);
}

.slide:hover+.navii label {
   opacity: 0.5;
}

.navii label:hover {
   opacity: 1;
}

.navii .next {
   right: 0;
}

input:checked+.slide-container  .slide {
   opacity: 1;
   transform: scale(1);
   transition: opacity 1s ease-in-out;
}

input:checked+.slide-container .navii label {
   display: block;
}

.nav-dots {
   width: 100%;
   bottom: 9px;
   height: 11px;
   display: block;
   position: absolute;
   text-align: center;
   margin-top: 770px;
}

.nav-dots .nav-dot {
   top: -5px;
   width: 11px;
   height: 11px;
   margin: 0 4px;
   position: relative;
   border-radius: 100%;
   display: inline-block;
   background-color: rgba(0, 0, 0, 0.6);
}

.nav-dots .nav-dot:hover {
   cursor: pointer;
   background-color: rgba(0, 0, 0, 0.8);
}

input#img-6:checked ~ .nav-dots label#img-dot-6 {
   background: rgba(0, 0, 0, 0.8);
}

.lbimg {
   width: 1908px;
   height: 890px;
   margin-top: 50px;

   vertical-align: middle;
   position: absolute;
}

.lbwrap {
   position: absolute; margin-bottom:100px;
}

.fonts {
   position: absolute;
   width: auto;
   margin-top: 120px;
   margin-left: 275px;
   font-family: 'NanumSquare', sans-serif;
   font-size: 28px;
   color: white;
}

.sboard1 {
   position: absolute;
   width: auto;
   font-family: 'NanumSquare', sans-serif;
   font-size: 38px;
   color: white;
   margin-top: 200px;
   margin-left: 345px;
}

.sboard2 {
   position: absolute;
   width: auto;
   /* font-family: 'NanumSquare', sans-serif; */
   font-size: 38px;
   color: white;
   margin-top: 200px;
   margin-left: 720px;
   align:center;


}

.sboard3 {
   position: absolute;
   width: auto;
   /* font-family: 'NanumSquare', sans-serif; */
   font-size: 38px;
   color: white;
   margin-top: 200px;
   margin-left: 1235px;
}

.sboard_son{
	font-size: 38px;
	/* font-family: 'NanumSquare', sans-serif; */
	margin-bottom: 500px;
}

/* ================================================================= */
.statistic {
   width: 1920px;
   min-height: 650px;
   padding: 40px 0px 80px 170px;
   margin: 0 auto;
}

.statistic-box {
   background-color: #F6F5F4;
   width: 400px;
   height: 200px;
   margin: 50px 60px 30px 50px;
   padding-top: 140px;
   margin-top: 170px;
   float: left;
   border: solid black 1px;

}
.statistic-box2 {
   background-color: #F6F5F4;
   width: 400px;
   height: 200px;
   margin: 50px 60px 30px 50px;
   padding-top: 140px;
   margin-top: 150px;
   float: left;
   border: solid black 1px;
}



.statistic-box:hover{
   background-color: #FFCC01;
   opacity: 0.4;
}

.statistic-box p:nth-child(1) {
   font-size: 40px;
   font-weight: 700;
   color: #FFCC01;
   margin: 0px;
   padding: 0px;


}

.statistic-box p:nth-child(2) {
   font-size: 14px;
   font-weight: 700;
   color: gray;
   margin: 0px;
   padding: 0px;
}
/* 따라다니는 메뉴 */
#floatMenu {
   position: absolute;
   width: 150px;
   height: 150px;
   right: 50px;
   top: 780px;
   background-color: red;
   color: #fff;
   border-radius: 100px 100px 100px 100px;
   opacity: 0.4;
}

#textwhatiwant {
   text-align: center;
   font-size: 40px;
   font-size: 30px;
}
</style> -->
</head>
<%
DNDAO dao = new DNDAO();
DNVO vo = new DNVO();



int sumsum = dao.getsum();
int people = dao.getpeople();

%>
<body>


   <section id="edgar" class="appear">
      <div class="lbwrap">
         <img src="../image/lbjpg2.png" alt="my images" class="lbimg">
         <div class="fonts">세이프티는 전 세계 아동의 권리가 지켜지도록 노력하고 도움이 필요한
            아동들의 경제적, 사회적 자립을 돕습니다.</div>

         <div class="sboard1">
            <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;함께 한 후원자 </h5>
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=people %> 명 </h3>
         </div>
         <div class="sboard2">
            <h5>지원 아동·가족 및 지역사회 </h5>
            <h3>&nbsp;&nbsp;: 3,845,640명</h3>
         </div>
         <div class="sboard3">
            <h5>&nbsp;&nbsp;전체 후원금 </h5>
            <h3>&nbsp;<%= sumsum %> 원 </h3>
         </div>
         <ul class="slides">
            <input type="radio" name="radio-btn" id="img-1" checked />
            <li class="slide-container">
               <div class="slide">

                  <img src="../image/SAF1.png" />
               </div>
               <div class="navii">
                  <label for="img-6" class="prev">&#x2039;</label> <label
                     for="img-2" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-2" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF2.jpg" />
               </div>
               <div class="navii">
                  <label for="img-1" class="prev">&#x2039;</label> <label
                     for="img-3" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-3" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF3.png">
               </div>
               <div class="navii">
                  <label for="img-2" class="prev">&#x2039;</label> <label
                     for="img-4" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-4" />
            <li class="slide-container">
               <div class="slide">
                  <img
                     src="../image/SAF1.png" />
               </div>
               <div class="navii">
                  <label for="img-3" class="prev">&#x2039;</label> <label
                     for="img-5" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-5" />
            <li class="slide-container">
               <div class="slide">
                  <img
                     src="../image/SAF2.jpg" />
               </div>
               <div class="navii">
                  <label for="img-4" class="prev">&#x2039;</label> <label
                     for="img-6" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-6"  />
            <li class="slide-container">
               <div class="slide">
                  <img
                     src="../image/SAF3.png" />
               </div>
               <div class="navii">
                  <label for="img-5" class="prev">&#x2039;</label> <label
                     for="img-1" class="next">&#x203a;</label>
               </div>
            </li>

            <li class="nav-dots"><label for="img-1" class="nav-dot"
               id="img-dot-1"></label> <label for="img-2" class="nav-dot"
               id="img-dot-2"></label> <label for="img-3" class="nav-dot"
               id="img-dot-3"></label> <label for="img-4" class="nav-dot"
               id="img-dot-4"></label> <label for="img-5" class="nav-dot"
               id="img-dot-5"></label> <label for="img-6" class="nav-dot"
               id="img-dot-6"></label></li>
         </ul>
      </div>
   </section>
   <!-- ===================================  정회석 부분  ========================================== -->
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <section class="statistic" id="about">
      <div class="col-12 col-lg-6 statistic-wrapper">
         <div class="statistic-box text-center" style="background-image: url(../image/unicef2.jpg);">
            <p>개인후원</p>
            <p></p>
         </div>
         <div class="statistic-box text-center" style="background-image: url(../image/SAF5.png);">
         	 <a href="corporation_mod.jsp">
         	 	<p>법인 단체후원</p>
         	 </a>
         </div>
         <div class="statistic-box text-center" style="background-image: url(../image/SAF6.png);">
             <a href="organization_mod.jsp">
         	 	<p>일반 단체후원</p>
         	 </a>
         </div>
       <!--   <div class="statistic-box text-center" style="background-image: url(lbjpg.jpg);">
            <p>문의
            <p>전화줘라</p>
         </div>
         <div class="statistic-box text-center" style="background-image: url(lbjpg.jpg);">
            <p>Q&A</p>
            <p>질문줘라</p>
         </div>
		<div class="statistic-box text-center" style="background-image: url(lbjpg.jpg);">
            <p>후원가이드</p>
            <p>이렇게 하면된다</p>
         </div> -->
      </div>

   </section>

   <div id="floatMenu">
      <p id="textwhatiwant">
         ♥ <br />
         <br /> 후원하기
      </p>
   </div>

   </section>

<section class="tali">
  <%@include file="project_footer.jsp" %>
<!-- footer  -->
</section>




</body>
</html>