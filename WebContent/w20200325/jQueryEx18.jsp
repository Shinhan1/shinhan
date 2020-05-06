<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx18</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
// 		$('div').animate({left : 700}, 300);
		//자동으로 와리가리해주는 each/delay  함수.
		$('div').each(function(index){
			// delay(index*1/1000초) 초 후에 각각 animate 효과가 적용됨		
 			$(this).delay(index*500).animate({left : 700}, 'slow');
						//index ==> div가 배열로 들어와서 사용해줘야함			
		});
		//원상태로 복귀
		$('div').each(function(index){
			// delay(index*1/1000초) 초 후에 각각 animate 효과가 적용됨		
 			$(this).delay(index*400).animate({left : 0}, 'slow');
						//index ==> div가 배열로 들어와서 사용해줘야함			
		});
		
	});

</script>
<style type="text/css">
	div{
		width : 100px;
		height : 100px;
		background-color : yellow;
		position: relative;
	}
</style>
</head>
<body>

	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>

</body>
</html>