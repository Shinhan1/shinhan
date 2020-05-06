<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx01.jsp</title>
<style type="text/css">
	.plus {
		background : black;
		color: white;
		
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/*
			CSS 선택자
			1. HTML tag 전부
			2. id  ===>  #
			3. class =>  .
			4. ALL ===>  *
			
		*/
		
		$("h1").on('click', function(){
			$("h1").html(function(index, html){
				return html + " * ";
				
			});
			
		}); 	// onclick end
		
		$("h1").on({
			mouseenter : function(){		
				$("h1").addClass('plus');
			},
			mouseleave : function(){
				$("h1").removeClass('plus');
			}
			
		});
		
			
		
	});


</script>
</head>
<body>
	<!-- 
	jQuery : javascript library
	
	DOM 탐색은 CSS 선택자를 사용함.
	그러므로 CSS 표현식을 알고 있다면 보다 쉽게 이해할 수 있다.
	
	- $("선택자"), jQuery(선택자) ... 
	 -->
	
	<h1>HELLO</h1>
	<h1>jQuery</h1>
	<h1>World</h1>


</body>
</html>