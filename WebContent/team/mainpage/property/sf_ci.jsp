<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sf_ci.jsp</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

	$('.sf_ci_image2').hide();
	$('.sf_ci_image3').hide();

		$('.sf_ci_image1').mouseover(function() {
			$('.sf_ci_image2').show();
			$('.sf_ci_image3').hide();
			$('.sf_ci_image1').hide();

		})
		$('.sf_ci_image2').mouseout(function() {
			$('.sf_ci_image3').show();
			$('.sf_ci_image1').hide();
			$('.sf_ci_image2').hide();

		});
		$('.sf_ci_image3').mouseout(function() {
			$('.sf_ci_image3').hide();
			$('.sf_ci_image1').show();
			$('.sf_ci_image2').hide();

		});
		$('.sf_ci_image1').click(function() {
			location.href = '';

		});
		$('.sf_ci_image2').click(function() {
			location.href = '';

		});
		$('.sf_ci_image3').click(function() {
			location.href = '';

		});

	});
</script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.sf_ci_div {
	height: 400px;
	background-color: #4364ae;
}

.sf_ci_image1 {
	margin-top: 120px;
	margin-left: 830px;
}
</style>
</head>
<body>
	<div class="sf_ci_div">
		<img src="../../gabi/image/sf_logo_w.png" alt="" class="sf_ci_image1">
		<img src="../../gabi/image/sf_page2.png" alt=""class="sf_ci_image2">
		<img src="../../gabi/image/sf_page3.png" alt=""class="sf_ci_image3">
	</div>

</body>
</html>