<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../fuckCSS.css"> 
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="../css/done_mod.css">

<%@include file="../etc/sf_nav.jsp" %>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js">
</script>
<meta charset="UTF-8">
<title>mod.jsp</title>


<script>
$(document).ready(
		function move() {
		  var elem = document.getElementById("myBar");   
		  var width = 1;
		  var id = setInterval(frame, 10);
		  function frame() {
		    if (width >= 50) {
		      clearInterval(id);
		    } else {
		      width++; 
		      elem.style.width = width + '%'; 
		    }
		  }
		});

function openWin(){  
    window.open("http://dart.fss.or.kr/", "네이버새창", "width=800, height=700, toolbar=no, menubar=no,resizable=yes" );  
}  
//-->  
</script>
<script>
$(document).ready(function(){ 
	$("#submit").click(function(){
		
		if($("#price").val().length==0){ alert("금액을 입력하세요."); $("#price").focus(); return false; }

		});		
});


</script>
<!-- <style>
 
   
body{
 	width : 1200px; 	
 
 	}
.text{
 	margin-left: 60px;
 	margin-right:60px;
	
}
.corporation_table{
	margin-top : 30px;
	margin-left: 200px;
	maring-bottom: 30px;
	font-size: :108px;
	font-size: large;
	
 	
}

.corporation_button{
	margin-left: 500px;
	margin-top : 70px;
	margin-bottom : 30px;
	width: 130px;
	height: 40px;
	background-color: skyblue;
	font-size: x-large;
	margin-right:500px;
}


#text{
	border : 1px solid black;
}
.pont_L{	/*tex box  */
font-size: large;
margin-left:150px;
}




 	
.penta {
      width: 100px;
      height: 60px;
      transform: skew(20deg);
      background: #cc00ff;		
    }
    .pentaA {
      width: 135px;
      height: 80px;
      transform: skew(20deg);
      background: #cc00ee;		
    }
    .pentaB {
      width: 135px;
      height: 80px;
      transform: skew(20deg);
      background: #cc00dd;		
    }
   .donation_submit{
   align : center;
   
   
   }
 
  
   .f_row{
   font-size: :70px;
   }
   
     .alis{
    margin-left: 360px;
 	margin-right:360px;
 	position: absolute;
   
   }
	
	.falis{
   margin-top: 1000px;
   margin-right: -800px;
   }
  .balis{
   background-image: url("../images/chd.jpg");
   height:300px;
   width:1920px;
   margin-bottom: 50px;
   margin-top:50px;
   }
</style> -->
</head>

<body>
<div class="balis">
	</div>
<div class="alis">
	<%@include file="DoHeader.jsp" %>
	
<div class="w3-container">
  			<h2> 2. 후원 금액 및 매체 선택 단계 :: </h2>
  		<div class="w3-light-grey">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 50% </div>
  		</div>
	</div> <br>



<!-- <form action="mod_3.jsp"> -->
<!-- <form action="function.jsp"> -->


<%
request.setCharacterEncoding("UTF-8");
String cr_name = request.getParameter("cr_name");
String cr_number = request.getParameter("cr_number");
String cr_man_name = request.getParameter("cr_man_name");
String cr_man_phone_number = request.getParameter("cr_man_phone_number");
/* String price = request.getParameter("price"); */

%>




<div id="text">
 <form action="corporation_mod3.jsp">
 	<table class="corporation_table">
 		<%-- <%=cr_name %><%=cr_number %><%=cr_man_name %><%=cr_man_phone_number %><%=price %> --%>
		
<!-- ****************************************************************************************************************************** -->
	<h3>&nbsp;&nbsp;&nbsp;후원 금액 및 매체 선택</h3>
   <tr class="pont_L">
  <th class="pont_L">
		<span>후원 방법  </span>
  			</th>
  			<td>
				<input type="checkbox"
				 name="box"  class="pont_L" id="" value="kakao"/> 카카오페이
				<input type="checkbox" name="box"  id="" value="kg"/> KG이니시스
				<input type="checkbox" name="box"  id="" value="toss"/> 토스
			</td>   
   		</tr>
   
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">  
   	<th class="f_c_row">
    	<span>후원 선택</span>
  			</th>
  			<td>
  				<input type="checkbox" name="box2" class="pont_L" id="" value="regular"/>정기  후원
				<input type="checkbox" name="box2"  id="" value="irregular"/>비 정기 후원
			</td>   
   		</tr>
<!-- ****************************************************************************************************************************** -->
<tr class="f_c_row">
  			<th class="f_c_row">
      			<span>후원금액</span>
  			</th>
  			<td>
  				<span>
  					<input type="text" title="후원금액"class="pont_L" id="price" name="price"  placeholder=" 금액을 입력해 주세요." size="30">
  				</span>
  			</td>   
   		</tr>
<!-- ****************************************************************************************************************************** -->

	<tr class="f_c_row">
		<td>
			<input type="hidden" title="법인체 명" id="cr_name" name="cr_name" value="<%=cr_name %>" size="50">
			<input type="hidden" title="법인 등록번호" id="cr_number" name="cr_number" value="<%=cr_number %>" size="50">
			<input type="hidden" title="법인체 담당자" id="cr_man_name" name="cr_man_name" value="<%=cr_man_name %>" size="10">
			<input type="hidden" title="담당자 번호" id="cr_man_phone_number" name="cr_man_phone_number" value="<%=cr_man_phone_number %>" size="11"> 
																											  
			<%-- <input type="hidden" title="후원금액" id="price" name="price"  placeholder="price" value="<%=price %>" size="50"> --%>
		<td>
	</tr>
</table>
  <input type="submit" title="다음" class="corporation_button" id="submit" name="Donation" value="다음 단계" size="50">
   
			<h5 style="text-align: center;">SAFETY의 후원회원이 되시면,</h5>
    <h6 class="nbg" style="text-align: center;">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
    <h6 style="text-align: center;"><button onclick="window.open('../support/corporation_list.jsp', '함께한 사람들','width=350px, height=400px')">함께한 사람들</button></h6>
                      
    
  
  
   
   
   
   </form>
   </div> 
    <br><br>
   <hr>
  </div>  
   <div class="falis">
   <%@include file="../etc/project_footer.jsp" %>
   </div>
</body>
</html>