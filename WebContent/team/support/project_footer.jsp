<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>


/* * {
	font-family: 'NanumSquare', "Apple SD Gothic Neo", Helvetica, sans-serif, Arial;
} */

 /* #donaBtn {
      position: fixed;
      bottom: 50px;
      right: 50px;
      opacity: 0.7;
      width: 180px;
      height: 100px;
    } */ 
.header {
		height: 71px;
		border-bottom: 1px solid #8C8C8C;
	}

#logo {
	height: 70px;
	width: 150px;
	margin-left: 10px;
	float: left;
	margin-right: 300px;
}

.customer {
		background-size: 100% 100%;
		height: 170px;
		padding-top: 100px;
		text-align: center;
	}

.navi_li {
	margin: 20px 0 0 0;
	display: inline;
	float: left;
}

.nav {
	padding: 60px 60px 23px 60px;
	text-decoration: none;
	font-size: 20px;
	color: black;
}
.hide_menu {
	position: absolute;
	top: 88px;
	left: 470px;
	background-color: white;
	display: none;
}

.hide_menu ul {
	float: left;
	list-style: none;
}

.hide_menu li a {
	text-decoration: none;
	color: black;
}

.navi:hover .hide_menu {
	display: block;
}
#cctxt {
	width: 490px;
	height: 30px;
	padding: 10px;
}

#selbt {
	margin-top: 7px;
	width: 40px;
	height: 40px;
	background-color: white;
	margin-left: -52px;
	size: 50% 50%;
	position: absolute;
}

.bb {
	text-decoration: none;
	font-size: 20px;
	color: black;
}

.bb_li {
	border: 1px solid #BDBDBD;
	border-right: hidden;
	width: 180px;
	height: 45px;
	text-align: center;
	padding-top: 20px;
	display: inline;
	float: left;
}

#bb1_li {
	border-right: 1px solid #BDBDBD;
}

#hm_ul2 {
	margin-left: 60px;
}

#hm_ul3 {
	margin-left: 60px;
}

#hm_ul4 {
	margin-left: 20px;
	padding-right: 30px;
}


.under_bar div {
	border: 1px solid #BDBDBD;
	padding: 20px;
	margin-top: 50px;
	margin-right: 40px;
	width: 25%;
	height: 60px;
	float: left;
}

.under_bar div img {
	float: left;
	padding-right: 20px;
}

.under_bar div p {
	font-size: 13px;
}

.under_bar div h3 {
	margin: 0;
}

.under_bar div a img {
	float: right;
	margin-top: -50px;
	margin-right: -30px;
}

.main {
	height: 1300px;
}

.footer {
	height: 190px;
	background-color: #EAEAEA;
}

.inner {
	padding: 20px 135px 20px 360px; 
}

.footer_top input {
	margin-right: 20px;
}

.fb {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
}

.fb:first-child {
	margin-left: -60px;
}

.fb:last-child {
	border-right: none;
}

.fb a {
	text-decoration: none;
	color: black;
}

.fb_mi {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
	font-size: 12px;
	color: #4C4C4C;
}

.fb_mi:first-child {
	margin-left: -60px;
}

.fb_mi:last-child {
	border-right: none;
}

.footer_bottom p {
	font-size: 12px;
	color: #A6A6A6;
}

body {
	margin : 0;
	
}
.m {
	width: 1903px;
}
</style>
<!-- project_footer.jsp -->
<div class="footer">
		<div class="inner">
			<div class="footer_top">
				<input type="image" src="../../images/facebook.png" alt="페이스북" onclick="location.href='http://www.facebook.com'" />
				<input type="image" src="../../images/instagram.png" alt="인스타그램" onclick="location.href='http://www.instagram.com'" /> 
				<input type="image" src="../../images/twitter.png" alt="트위터" onclick="location.href='http://www.twitter.com'" /> 
				<input type="image" src="../../images/youtube.png" alt="유튜브" onclick="location.href='http://www.youtube.com'" />
			</div>

			<div class="footer_bottom">
				<ul>
					<li class="fb"><a href="">이용약관</a></li>
					<li class="fb"><a href="">개인정보처리방침</a></li>
					<li class="fb"><a href="">E-mail</a></li>
					<li class="fb"><a href="map.jsp">오시는 길</a></li>
					<li class="fb"><a href="question_answer.jsp">FAQ</a></li>
					<li class="fb"><a href="siteMap.jsp">사이트맵</a></li>
				</ul>
				<br />

				<ul>
					<li class="fb_mi">서울특별시 구로구 구로동 시흥대로163길 33 주호타워 2층,3층</li>
					<li class="fb_mi">대표전화 010-9953-5444</li>
					<li class="fb_mi">팩스 010-9953-5444</li>
					<li class="fb_mi">대표자 신한</li>
					<li class="fb_mi">사업자 번호 123-45-67890</li>
				</ul>
				<br />
				<p>Copyright © Save the Children Korea All Rights Reserved.</p>
			</div>
		</div>

	</div>
	</div>