<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test2</title>
<style type="text/css">
	div{
		width: 100px;
		height: 100px;
		background-color: #B2CCFF;
		margin: 1px;
	
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('div').hover(function(){
			$(this).animate({marginLeft : 800}, 500);
			
		},function(){
			$(this).animate({marginLeft : 0}, 500);
			
		});
		
		
	});

</script>

</head>
<body>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>

</body>
</html>