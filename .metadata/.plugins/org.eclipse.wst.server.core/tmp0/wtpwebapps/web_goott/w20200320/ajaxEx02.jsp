<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx02.jsp</title>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function(event) {
		// readyState 는 0 ~ 4까지 순서로 되어있고 4가 완료를 의미
		//alert(request.readyState);
		//alert(request.readyState + " : " + request.responseText);
		
		if(request.readyState == 4) {
			if(request.status == 200) {
				var txt = request.responseText;
				
				var d1 = document.getElementById("d1");
				d1.innerHTML = "<h2>" + txt + "</h2>";
				
				
				//document.write(txt);
			}
			
		}
		
	}
	
	request.open("GET", "data.html", true);
	request.send();
	
	


</script>
</head>
<body>
	<h1>Ajax Ex</h1>
	<div id="d1"></div>



</body>
</html>