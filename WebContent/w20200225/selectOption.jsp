<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectOption.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	/* jQuery : 자바스크립트 잘 되어있는 것을 모아둔 라이브러리 */
	/* 
	
	$(document).ready(function(){
		$("#dan").on('change', movePage);
		
	}); 
	
	*/



	function movePage() {
		
		
		// 자바스크립트로 prtGuGuDan.jsp한테 넘김
		document.frm.action = "prtGuGuDan.jsp";
		document.frm.method ="get";
		document.frm.submit();
		
		
		
	}
</script>
</head>
<body>
	자바스크립트로 옵션을 선택하면 movePage()호출
	콘솔창에 옵션선택됐음 출력

	<h2>구구단을 선택하세요</h2>
	<form action="#" name="frm">
		<!-- <select name="d1" id="dan" onchange="movePage()">	 -->
		<select name="d1" id="dan">
			<option value="----------">선택</option>
			<option value="1단">1단</option>
			<option value="2단">2단</option>
			<option value="3단">3단</option>
			<option value="4단">4단</option>
			<option value="5단">5단</option>
			<option value="6단">6단</option>
			<option value="7단">7단</option>
			<option value="8단">8단</option>
			<option value="9단">9단</option>	
		</select>
		<input type="button" value="전송" onclick="movePage()"/>
	</form>

</body>
</html>