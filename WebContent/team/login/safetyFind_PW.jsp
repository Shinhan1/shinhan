<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>safetyFind_PW</title>


<link rel="stylesheet" href="../css/safetyFind_PW.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
$(function() {

	$('#eamilinput').hide();

	$('#tapbtn1').click(function() {
		$('#eamilinput').hide();
		$('#hpinput').show();
	});

	$('#tapbtn2').click(function() {

		$('#hpinput').hide();
		$('#eamilinput').show();
	});
	$('.btn').click(function() {
		$('h6').show();

	});



});
</script>
</head>
<body>
<div class="safetyFind_PW_full">

<div id ="inner">
	<div id="title">
		<h1>비밀번호 찾기</h1>
		<h5>본인인증을 통해 비밀번호를 찾으실 수 있습니다.</h5>
	</div>

	<div id="tapdiv">
		<input type="button" value="휴대폰 번호 찾기" id="tapbtn1"/>
		<input type="button" value="이메일로 찾기" id="tapbtn2"/>
	</div><!--  tapdiv end-->



	<form action="../">
		<div id="namefd">
		<input type="text" title="아이디를 입력하세요." placeholder="아이디" name="name" id="name" autofocus="autofocus" style="padding-left: 10px;">

		</div>

		<div id="hpinput">
        	<select name="" id="hpchoice" style="padding-left: 5px;">
        		<option value="010" >010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
        	</select>
				<input type="text" placeholder="'_' 제외하고 숫자만 입력" title="'_' 제외하고 숫자만 입력" name ="hpchoicep2" id="hpchoice2" style="padding-left: 10px;"/>

        </div> <!-- hp find end-->

        <div id="eamilinput">
        	<input class="email1 input-email" type="email" name="email1" id="email1" onkeyup="nonHangul3(this);" title="이메일 아이디를 입력해주세요."
        	placeholder=""
        	style="padding-left: 10px;">
        	@
        	<input class="email2 input-email" type="email" name="email2" id="email2" title="이메일 주소를 입력해주세요." style="padding-left: 10px;">
        	<select class="email3" title="이메일주소 선택" name="email_select" id="email_select" onchange="$('#email2').val(this.value)">
            	<option value="" selected="selected">직접입력</option>
                <option value="yahoo.co.kr">yahoo.co.kr</option>
                <option value="lycos.co.kr">lycos.co.kr</option>
                <option value="gmail.com">gmail.com</option>
                <option value="empal.com">empal.com</option>
                <option value="freechal.com">freechal.com</option>
                <option value="dreamwiz.com">dreamwiz.com</option>
                <option value="hanafos.com">hanafos.com</option>
                <option value="korea.com">korea.com</option>
				<option value="magicn.com">magicn.com</option>
				<option value="nate.com">nate.com</option>
				<option value="naver.com">naver.com</option>
				<option value="netian.com">netian.com</option>
				<option value="hanmir.com">hanmir.com</option>
				<option value="chollian.net">chollian.net</option>
				<option value="hitel.net">hitel.net</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="orgio.net">orgio.net</option>
				<option value="hanmail.net">hanmail.net</option>
         	</select>

        </div> <!-- hp find end-->
		<div>
			<h6>해당 이메일로 인증을 통해 비밀번호를 변경 할 수 있습니다.</h6>
		</div>
		<div>
			<input type="button" value="확인" class ="btn" />
		</div>
		</form>
	</div> <!--inner end-->
</div>
</body>
</html>
