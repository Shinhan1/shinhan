<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sf_supporter.jsp</title>
<link rel="stylesheet" href="../../css/sf_supporter.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
 $('#sponedbtn1').click(function () {
	 location.href = ''; /* 해당링크로 */
 });
 $('#sponedbtn2').click(function () {
	 location.href = '';/* 해당링크로 */
 });



});


</script>

</head>
<body>
	<div class="sf_supporter_div">
		<div class="supporter_div">

			<div class="supporter_img1_div">
				<input type="button" value="" id="sponedbtn1" />
			</div>

			<div class="supporter_img2_div">
				<input type="button" value="" id="sponedbtn2" />
			</div>

		</div> <!-- sponed_div1 end -->

	</div><!-- sf_sponed_div end  -->
</body>
</html>