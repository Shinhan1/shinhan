<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx01.jsp</title>
</head>
<body>
	<!-- Asynchronous JavaScript and XML -->
<script type="text/javascript">
	// XMLHttpRequest 객체
	var request = new XMLHttpRequest();
	console.log(request);
	console.dir(request);
	
	// 찾기		(method, data, 동기(false)/비동기(true))
	request.open('GET', 'data.html', false);
	
	// 수행
	request.send();
	
	// 확인
	//alert(request.responseText);
	
	var txt = request.responseText;
	
	console.log(txt);
	
	document.write(txt);
	
	
	
</script>
	<a href="data.html"></a>


</body>
</html>