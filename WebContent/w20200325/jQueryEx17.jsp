<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery17</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('div').hover(function(){
			$(this).stop().animate({left : 700}, 300)
		}, function(){
			//mouse out
			$(this).animate({left : 0}, 300);
		
		});//hover end;
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