<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx03.jsp</title>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	
	request.open("GET", "data.json", true);
	
	request.onreadystatechange = function(event) {
		if(request.readyState == 4 & request.status == 200) {
			var json = request.responseText;
			
			//console.log(json);
			//document.write(json);
			
			// 가공하며 출력
			var prt = "";
			
			for(var i = 0; i < json.length; i++){
				//console.log(json[i]);
				for(var j = 0 in json[i]) {
					prt += '<h1>' + i + " : " + json[i][j] + "</h1>";
					//console.log(prt);
				}
				
				
			} // for end
			
			// 브라우저에 출력
			var d1 = document.getElementById("d1");
			d1.innerHTML += prt;
			
		}
		
	}
	
	
	
	request.send();
	
	

</script>


</head>
<body>
	<h1>Ajax Ex</h1>
	<div id="d1"></div>

</body>
</html>