<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx16</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
// 		$('h2').click(function(){
// 			$(this).html(function(index,html){
// 				return html + "*";
// 			});
// 		});
			
// 		$('h2').click(function(){
// 			$(this).append("*");
// 		});			
		
// 		$('#box1').click(function(){
// 			var w = $('#box1').width();
// 			var h = $('#box1').height();
			
// 			var ww = w+100;
// 			var hh = h+100;
			
// 			$(this).animate({marginLeft : 200}, 500, function(){
// 				$(this).animate({width :ww }, 500, function(){
// 					$(this).animate({height :hh}, 500);
// 				});
// 			});
			
// 		});
		
		
		//강사님 코드
		$('#box1').click(function(){
			$(this).animate({marginLeft : '+=100px'}, 1000)
			.animate({width : '+=100'}, 1000)
			.animate({height : '+=100' }, 1000)
			
		});//#div1 end
		
		
		
		
		$('#box2').click(function(){
			$(this).animate({marginleft : '+=100px'}, 1000)
			.animate({width : '+=100'},1000)
			.animate({heigth : '+=100'}, 1000);
			//여기까지 수행하는데 3초가 걸립니다 그뒤에 함수를 실행시켜야 이어서 사용할수 있습니다
			
			//3초후 다음함수 실행
			setTimeout(function(){
				
				//애니메이션 큐 제거
				$('#div2').clearQueue()
					$('#div2').hide();							
				}, 3000);
				
			}); //div2 end
			
			
			
			
			
			$('h1').click(function(){
				
				$(this).html(function(index, html){
					return html + '★'; 
				});
				
			}); //h1 end
			
			
			
			setInterval(function(){
				$('h1').append("★");
				}, 1000);
			
			

	});
		
		


</script>
<style type="text/css">
	#box1{
		width : 150px;
		height : 150px;
		padding : 10px;		
		background : red;
	}
	#box2{
		width : 150px;
		height : 150px;
		padding : 10px;
		background : green;
		margin-top : 40px;	
	}	
</style>
</head>
<body>
	<div id="box1">
	
	</div>
	
	<div id="box2">
	
	</div>
	
	<h1>STAR :<span></span></h1>
	

</body>
</html>