<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx15.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btn1').click(function(){
			// right 버튼을 클릭하면 img가 오른쪽으로 800 이동시켜보세요
			// $('img').css("marginLeft", "800px");		// margin-left 써도 옮겨짐
			
			// 맵 방식 - JSON
			/* $('img').css({
				"margin-left" : "800px"
				
			}); */
			
			// animate(애니메이션 효과, 시간)
			$("img").animate({"margin-left" : "1000px"}, 1000);
			
			
		});		// btn1 click end
		
		$('#btn2').click(function(){
			// down 버튼 클릭 - 200px 아래로 이동
			$('img').animate({marginTop : 200}, 1000);
		});
		
		$('#btn3').click(function(){
			// zoom2X 버튼 클릭 - 이미지 2배로 키우기
			var wid = parseInt($("img").css("width"))*2;
			var hei = $("img").height()*2;
	
			// alert(wid + " : " + hei);
			/* $('img').animate({
				"width" : 2*wid+"px",
				"height" : 2*hei+"px"
				
			}, 500); */
			
			$('img').animate({width : wid , height : hei}, 1000);
			
			
		});
		
		// div를 클릭하면 크기가 100씩 증가하도록 만들어보세요
		$('div').click(function(){
			/* var w = $('div').width()+100;
			var h = $('div').height()+100;
			
			$('div').animate({width : w, height : h}, 1000); */
			
			$(this).animate({
				width : '+=100',
				height : '+=100'
				
			}, 'fast');
			
			
		});
		
		
		
		
		
		
	});
</script>
<style type="text/css">
	div {
		width : 100px;
		height: 100px;
		background-color: red;
	}
</style>
</head>
<body>

	<!-- 이미지에 효과 주기 -->
	<input type="button" value="right" id="btn1" />
	<input type="button" value="down" id="btn2" />
	<input type="button" value="zoon2X" id="btn3" />
	
	<br />
	<br />
	<br />
	
	<img src="../images/stone.jpg" alt="" />
	<br /><br />
	
	<!-- div에 애니메이션 효과 주기 -->
	<div></div>
	
	
	
	
</body>
</html>