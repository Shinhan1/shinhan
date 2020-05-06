<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx19</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		//반복적 수행 : setInterval
		setInterval(function(){
			//모든 이미지가 다 보인경우 다시 오른쪽에서 나오게 설정해보세요
			$('#box2').animate({left : "-=10px"},100, function(){  //바로 ,안찍고 function 쓰는건 앞에 동작이 다 끝나고 이어서 하기떄문
				//이미지가  지나고 나면 현재 left 속성을 얻어오기
				var left = parseInt($("#box2").css("left"));
				
				if(left < -1100){
					$("#box2").css("left", "0px");
					
				}
			});
			
			
			
			
		});
	});
</script>

<style type="text/css">
	* { margin : 0; padding : 0;}
	#postbox{
		margin-left: 200px;
		margin-top:  30px;
	}
	#box1{
		width : 600px;
		height: 190px;
		background-color: black;
		border : 4px solid #aaaaaa;
		overflow: hidden;
		position: relative;
	}
	#box2{
		width: 1200px;
		height: 190px;
		margin : 0;
		padding : 0;
		position: absolute;
		left: 0px;
		 
	}
	#box2 ul li{
		list-style-type: none;
		float : left;
		margin : 0;
		padding : 0;
		
	}
	
	#box2 ul li img {
		width : 135px;
		margin-right: 5px;
	}
	#eventBox{
		width : 690px;
		height: 200px;
		background-color: #cccccc;
		margin-left: 200px;
		margin-top: 30px;
	}
	#eventBox ul li{
		list-style-type: none;
		
	}
	#box3{ padding: 0px; margin : 0px; margin-left: 20px;}
</style>
</head>

<body>
<!-- 		영화 소개 메인 페이지	 -->
<!-- 		전광판 같은 느낌 		 -->
	<div id="postbox">
		<h2>c데박스</h2>
			<div id="box1">
				<div id="box2">
<!-- 					ul>(li>img[src='../image/movieimage$'])*8 -->
						<ul>
							<li><img src="../image/movie_image5.jpg" alt="" /></li>
							<li><img src="../image/movie_image6.jpg" alt="" /></li>
							<li><img src="../image/movie_image7.jpg" alt="" /></li>
							<li><img src="../image/movie_image8.jpg" alt="" /></li>
							<li><img src="../image/lover.jfif" alt="" /></li>
							<li><img src="../image/bg.jpg" alt="" /></li>
							<li><img src="../image/happytogether.jfif" alt="" /></li>
							<li><img src="../image/btn_cart.jpg"  alt="" /></li>
						</ul>
				</div>
				
			</div>
		<div id="eventBox">
			<div id="box3">
				<h2>진행중인 이벤트</h2>
				<ul>
					<li>1.누군가의 인생영화</li>
					<li>2.SPHERE X 감사 이벤트</li>
					<li>3.군장병 온라인 할인오픈</li>
					<li>4.마지막주 수요일은 문화의 날 - 반값 이벤트</li>
				</ul>
			</div>
	</div>
	</div>
</body>
</html>