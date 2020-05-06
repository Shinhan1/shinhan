<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx08.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('textarea').keyup(function(){
			// 사용자가 입력한 글의 글자수 구하기
			var input = $(this).val().length;
			
			//console.log(input);
			
			//var cnt = 60 - input;
			
			//console.log(cnt);
			
			$('span').html(input);
			
			// 30자가 넘어가면 글자색이 노란색
			// 50자가 넘어가면 글자색이 빨간색
			// 59자가 되면 경고창 띄우고 경고창에 더 이상 글을 작성할 수 없습니다.
			if(input >= 30){
				$('span').css('color', 'yellow');
			}
			if(input >= 50) {
				$('span').css('color', 'red');
			}
			if(input >= 60) {
				alert("더 이상 글을 작성할 수 없습니다.");
				// 더 이상 글이 써지지 않도록 수정해보세요
				$(this).attr("disabled", "disabled");
				
			}
			
			
			
		});	// keyup() end
	});
</script>
</head>
<body>
	<div>
		<p>한 마디 작성하세요</p>
		<h2><span></span>/60자 제한</h2>
		<textarea name="" id="" cols="30" rows="10"></textarea>
	</div>

</body>
</html>