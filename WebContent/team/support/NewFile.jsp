<%@page import="dao.SsabalDAO"%>
<%@page import="vo.SsabalVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    .table {
      border-collapse: collapse;
      border-top: 3px solid #168;
      margin: 0 auto;
    }
    .table th {
      color: #168; 
      background: #f0f6f9;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table caption{caption-side: bottom; display: none;}

    th{
    	font-size: 20px;
    }
    th{
    	width : 350px;
    }
    /* ====================테이블만드는거====================== */
  	select{
  		width:200px;height:50px;
    padding:10px;
    font-size:14px;
    border:1px solid #ccc;
    background-color:#fff;
    appearance:none; /* 기본 스타일 없애기 */
    -webkit-appearance:none;
    -moz-appearance:none;
    -o-appearance:none;
  	}
  	input{
  	width: 200px;
  	height: 50px;
  	font-size:17px;
    border:1px solid #ccc;
    text-align: right;
  	}

  	#btn{
  		border-top-left-radius: 5px;
  		border-bottom-left-radius: 5px;
  		margin-right:-4px;
  		border-top-right-radius: 5px;
  		border-bottom-right-radius: 5px;
  	}

  	#btn{ border: 1px solid skyblue; background-color: rgba(0,0,0,0); color: skyblue; padding: 5px; }
  	#btn:hover{ color:white; background-color: skyblue; }

	h5, h6{
	text-align: center;
	}

  </style>

  <script type="text/javascript">
    function inNumber(){
        if(event.keyCode<48 || event.keyCode>57){
           event.returnValue=false;
        }
    }
    </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script type="text/javascript">

	$(function(){

		      //직접입력 인풋박스 기존에는 숨어있다가

		$("#personboxDirect").hide();
		$("#koreaboxDirect").hide();
		$("#emerboxDirect").hide();
		$("#foreignboxDirect").hide();



		$("#person").change(function() {



		                //직접입력을 누를 때 나타남

				if($("#person").val() == "00") {
					$("#personboxDirect").show();
				}  else {
					$("#personboxDirect").hide();
				}
			})


			/* =================================================================== */

			$("#korea").change(function() {



                //직접입력을 누를 때 나타남

		if($("#korea").val() == "00") {
			$("#koreaboxDirect").show();
		}  else {
			$("#koreaboxDirect").hide();
		}
	});

/* =================================================================== */

$("#emer").change(function() {



                //직접입력을 누를 때 나타남

		if($("#emer").val() == "00") {
			$("#emerboxDirect").show();
		}  else {
			$("#emerboxDirect").hide();
		}
	});

/* =================================================================== */

$("#foreign").change(function() {



                //직접입력을 누를 때 나타남

		if($("#foreign").val() == "00") {
			$("#foreignboxDirect").show();
		}  else {
			$("#foreignboxDirect").hide();
		}
	});

/* =================================================================== */




		});



</script>
</head>
<body>

<form action="nextfile.jsp">
  <table class="table">
    <caption>표 제목</caption>
    <tr>
    	<th style="border-right: hidden;">후원 분야</th>
    	<th style="border-right: hidden; text-align: right;">금액</th>
    	<th style="border-right: hidden;"></th>
    </tr>

		<tr>
			<td style="border-right: hidden;">개인후원</td>
			<td style="border-right: hidden; text-align: right;">
				<select name="person" id="person">
					<option value="0">선택</option>
					<option value="100000">100000</option>
					<option value="50000">50000</option>
					<option value="30000">30000</option>
					<option value="20000">20000</option>
					<option value="00">직접입력</option>
				</select>
			</td>
			<td style="border-right: hidden;"><input type="text" onkeypress="inNumber();" id="personboxDirect" name="personboxDirect" value="0"/> </td>
		</tr>
		<!-- ==================================================================== -->
		<tr>
			<td style="border-right: hidden;">해외후원</td>
			<td style="border-right: hidden; text-align: right;">
				<select name="foreign" id="foreign">
					<option value="0">선택</option>
					<option value="100000">100000</option>
					<option value="50000">50000</option>
					<option value="30000">30000</option>
					<option value="20000">20000</option>
					<option value="00">직접입력</option>
				</select>
			</td>
			<td style="border-right: hidden;"><input type="text" onkeypress="inNumber();" id="foreignboxDirect" name="foreignboxDirect" value="0"/></td>
		</tr>
			<!-- ==================================================================== -->
		<tr>
			<td style="border-right: hidden;">국내후원</td>
			<td style="border-right: hidden; text-align: right;">
				<select name="korea" id="korea">
					<option value="0">선택</option>
					<option value="100000">100000</option>
					<option value="50000">50000</option>
					<option value="30000">30000</option>
					<option value="20000">20000</option>
					<option value="00">직접입력</option>
				</select>
			</td>
			<td style="border-right: hidden;"><input type="text" onkeypress="inNumber();" id="koreaboxDirect" name="koreaboxDirect" value="0" /></td>
		</tr>
			<!-- ==================================================================== -->
		<tr>
			<td style="border-right: hidden;">긴급구호/인도적지원</td>
			<td style="border-right: hidden; text-align: right;">
				<select name="emer" id="emer">
					<option value="0">선택</option>
					<option value="100000">100000</option>
					<option value="50000">50000</option>
					<option value="30000">30000</option>
					<option value="20000">20000</option>
					<option value="00">직접입력</option>
				</select>
			</td>
			<td style="border-right: hidden;"><input type="text" onkeypress="inNumber();" id="emerboxDirect" name="emerboxDirect" value="0"/></td>
		</tr>

			<tr>
				<td style="border-right: hidden; border-bottom:none;"></td>

					<td style="border-bottom:none;  text-align: center;">
					<br></br><br></br>
						<input type="submit" value="다음" id="btn" style="width: 150px; height: 78px; text-align: center; font-size: 18px; "/>
					</td>

				<td style="border-right: hidden; border-left: hidden; border-bottom:none;"></td>
			</tr>

  </table>
  <br /><br />
  <hr style=" width: 800px; "/>


											<h5>SAFETY의 후원회원이 되시면,</h5>
                      <h6 class="nbg">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
                      <h6><button onclick="window.open('../test2/list.jsp', '함께한 사람들','width=350px, height=400px')">함께한 사람들</button></h6>
</form>
<!-- =========================결제end================================= -->


</body>
</html>