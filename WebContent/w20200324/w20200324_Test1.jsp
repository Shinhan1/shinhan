<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test1</title>
<style type="text/css">
	/* div{
		margin-left: 0px;
		width: 100px;
		height: 100px;
		background-color: red;
	} */
	#div1{
		margin-left: 0px;
		width: 100px;
		height: 100px;
		background-color: red;
	}
	#div2{
		margin-left: 0px;
		width: 100px;
		height: 100px;
		background-color: blue;
	}
	
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
		$('#div1').click(function(){
			$(this).animate({
				marginLeft: "+=100"
			}, 500);
			$(this).animate({
				width : "+=100"		
			}, 500);
			$(this).animate({
				height : "+=100"		
			}, 500);
			
		});
		
		$('#div2').click(function(){
			$(this).animate({
				marginLeft: "+=100"
			}, 500);
			$(this).animate({
				width : "+=100"		
			}, 500);
			$(this).animate({
				height : "+=100"		
			}, 500, function(){
				$(this).hide();
			});
			
		});
		
		setInterval(function(){
			$('h1').append(" ★ ");
		}, 1000);
		
		
		
		$('h1').click(function(){
			$(this).append(" ★ ");
		});
		
		
	});
</script>
</head>
<body>
	<div id="div1"></div>
	<br /><br />
	<div id="div2"></div>
	<br /><br />
	<h1>Star : </h1>

</body>
</html>