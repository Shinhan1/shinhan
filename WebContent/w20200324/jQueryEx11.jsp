<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx11.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('img').css({
			"width" : "150px",
			"height" : "300px",
			"margin" : "20px"
		});
		
		$('p').css("margin-left", "28px");
		$('li').css("float", "left");
		$('ul').css("list-style", "none");
	});
</script>
</head>
<body>
	<!-- jQuery + css + img -->
	<h1>영화 소개</h1>
	<!-- ul>(li>div>img[src="../images/movie_image$.jpg"]+p)*5 -->
	<ul>
		<li>
			<div>
				<img src="../images/movie_img1.jpg" alt="클로젯" />
				<p>클로젯</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/movie_img2.jpg" alt="버즈 오브 프레이" />
				<p>버즈 오브 프레이</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/movie_img3.jpg" alt="공룡왕 디노" />
				<p>공룡왕 디노</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/movie_img4.jpg" alt="Pain & Glory" />
				<p>Pain & Glory</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/movie_img5.jpg" alt="히트맨" />
				<p>히트맨</p>
			</div>
		</li>
	</ul>

</body>
</html>