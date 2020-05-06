<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx22</title><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
// 			$('body').load('data.html');

// 		$.get('data.html', function(data){
// 			$('body').html(data);			
// 		});

		$.getJSON('data.json', function(data){
			$.each(data, function(name, value){
				$('body').append('<h1>' + name + ' : ' + value + '</h1>');
				
			});
			
		});

		
		
	});

</script>

<style type="text/css">

</style>
</head>
<body>
	

</body>
</html>