<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx14.jsp</title>
<style type="text/css">
	.mainmenu{
		float: left;
		width: 320px;
		list-style-type: none;
	
	}
	/* 공백 하나 주면 자식이라는 뜻 */
	li.mainmenu ul {
		margin: 0;
		display: block;
		list-style-type: none;
		padding:0;
	
	}
	li.mainmenu a {
		width: 300px;
		display: block;
		background-color: #F2CB61;
		color : white;
		text-decoration: none;
		padding: 10px;
		border-bottom: 1px solid #fff;
	}
	
	ul#dropDownMenu li a:hover {
		background-color:#BDBDBD;
	}
	

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('li.mainmenu ul').hide();
		
		$('li.mainmenu').hover(function(){
			// 카테고리에 마우스가 올라오면 실행될 부분
			//console.log("mouse over");
			
			// 내 카테고리의 자식요소를 호출
			$('ul', this).stop().slideDown(500);
			
			
		}, function() {
			// 카테고리에서 마우스가 빠지면 실행될 부분
			//console.log('mouse out');
			$('ul', this).stop().slideUp(500);
		
		});	// hover end
		
	});
</script>
</head>
<body>
	<!-- 드롭다운 메뉴 만들기 -->
	<!-- ul#dropDownMenu>(li.mainmenu>a+ul>(li>a)*3)*2 -->
	<ul id="dropDownMenu">
		<li class="mainmenu">
			<a href="">도서</a>
			<ul>
				<li><a href="#">IT</a></li>
				<li><a href="#">소설</a></li>
				<li><a href="#">비소설</a></li>
			</ul>
		</li>
		<li class="mainmenu">
			<a href="">명품</a>
			<ul>
				<li><a href="#">에르메스</a></li>
				<li><a href="#">구찌</a></li>
				<li><a href="#">프라다</a></li>
			</ul>
		</li>
	</ul>

</body>
</html>