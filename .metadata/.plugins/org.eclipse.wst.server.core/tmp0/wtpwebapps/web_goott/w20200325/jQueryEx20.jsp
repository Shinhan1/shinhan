<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx20</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
	$(function(){
		$('#innerFade').innerfade({
			animationtype : 'fade',
			speed : 'normal',
			timeout : 2000,
			type : 'random',
			containerheight : '350px'
			
			
			
		});
		
	});
</script>
<style type="text/css">
	*{ margin:0px; padding : 0px; }
	ul{list-style-type: none;}
	img {width: 600px; }
</style>
</head>
<body>
<!-- 	div#wrapper>ul#innerFade>(li>lmg[src='../image/movie_image$.jpg'])*10		 -->
		<div id="wrapper">
			<ul id="innerFade">
				<li><img src="../images/movie_img1.jpg" alt="" /></li>
				<li><img src="../images/movie_img2.jpg" alt="" /></li>
				<li><img src="../images/movie_img3.jpg" alt="" /></li>
				<li><img src="../images/movie_ime4.jpg" alt="" /></li>
				<li><img src="../images/stone.jpg" alt="" /></li>
				<li><img src="../images/stone1.jpg" alt="" /></li>
				<li><img src="../images/hermes.jpg" alt="" /></li>
				<li><img src="../images/btn_cart.jpg"  alt="" /></li>
				<li><img src="../images/hermes.jpg" alt="" /></li>
			</ul>
		</div>

</body>
</html>