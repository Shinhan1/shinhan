<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../fuckCSS.css"> 
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<link rel="stylesheet" href="../css/done_mod.css">
<%@include file="safetyNavi.jsp" %>

<script>
$(document).ready(
function move() {
  var elem = document.getElementById("myBar");   
  var width = 1;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 25) {
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


<!-- <style>
 
/*    
body, h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
	font-family: 'Open Sans', 'HelveticaNeue', 'Helvetica Neue', Helvetica, sans-serif, Arial;
}  */  
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
	/* font-family: 'Open Sans', 'HelveticaNeue', 'Helvetica Neue', Helvetica, sans-serif, Arial; */
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
margin-left: 100px;
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
   tbody{
   align : center;
   background-color : white;
   
   
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
   background-image: url("chd.jpg");
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
	<%@include file="organizationHeader.jsp" %>
		<div class="w3-container">
  			<h2> 1. 단체 정보 입력단계 :: </h2>
  		<div class="w3-light-grey">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 25% </div>
  		</div>
	</div><br>


<div id="text">
 <form action="organization_mod2.jsp"> <!--form action="mod_2.jsp">  -->
 	<table class="corporation_table">
<!-- ****************************************************************************************************************************** -->
	<h3>&nbsp;&nbsp;&nbsp;단체 정보 입력</h3>
   <tr class="pont_L">
  <th class="pont_L">
      <span>단체 명   </span>
  </th>
  <td>
  <span><input type="text" title="법인체 명" class="pont_L"id="cr_name" name="cr_name" placeholder=" 단체 명" size="40" maxlength="20"></span>
  
  </td>   
   </tr>
   
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">  <th class="f_c_row">
      <span>사업자등록번호 &nbsp;&nbsp;&nbsp;</span>
      <!--법인 등록번호 13자리 | 사업자 등록번호 10자리 -->
  </th>
  <td>
 	 <span>
  		<input type="text" title="법인 등록번호" class="pont_L" id="cr_number" name="cr_number" placeholder="  13자리 '-'제외 " size="20" maxlength="20"> 
  		<input type="button" id="cr_number" name="cr_number" value=" 법인 등록번호가 기억이 안나요." size="50"  onclick="javascript:openWin()"> 
  	</span>		
  </td>   
   </tr>
<!-- ****************************************************************************************************************************** -->
   
   <tr>
  <th class="f_c_row">
      <span>담당자 명</span>
  </th>
  <td>
  <span><input type="text" title="법인체 담당자" class="pont_L" id="cr_man_name" name="cr_man_name" placeholder=" 단체 담당자 " size="20" maxlength="20"></span>
  </td>
   </tr>
   
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">
  <th class="f_c_row">
      <span>담당자 번호</span>
  </th>
  <td>
  <span><input type="text" title="담당자 번호" class="pont_L" id="cr_man_phone_number" name="cr_man_phone_number" placeholder="  -제외 11자 입력 " size="40" maxlength="20"></span>

  </td>   
   </tr>
   
<!-- ****************************************************************************************************************************** -->
   <!-- <tr class="f_row">
  <th class="f_c_row">
      <span>후원자 명</span>
  </th>
  <td>
  <span><input type="text" title="후원자 명" id="cr_man_number" name="cr_man_number" value="" size="50"></span>
  </td>   
   </tr> -->
  
<!-- ****************************************************************************************************************************** -->
<!--  <tr class="f_row">
  <th class="f_c_row">
      <span>후원금액</span>
  </th>
  
  <td>
  <span><input type="text" title="후원금액" class="pont_L" id="price" name="price"  placeholder=" price" size="40"></span>
  
  </td>   
   </tr> -->
<!-- ****************************************************************************************************************************** -->
<!-- <tr class="f_row">
  <th class="f_c_row">
      <span>씨크릿 넘버</span>
  </th>
  <td>
  <span><input type="text" title="씨크릿넘버" class="pont_L"  id="secret_number"  placeholder="  씨크릿넘버" size="40" maxlength="20"></span>
  </td>   
   </tr> -->
<!-- ****************************************************************************************************************************** -->
<!-- <tr class="f_row">
  <th class="f_c_row">
      <span>결제 수단</span>
  </th>
  <td>
  <span><input type="text" title="씨크릿넘버"  class="pont_L" id="secret_number"  placeholder="  결제 수단" size="40"></span>
  </td>   
   </tr>    -->
   




</table>
	
  <input type="submit" title="다음" class="corporation_button"  name="Donation" value="다음 단계" size="40" maxlength="20">

   </form>
   </div> 
   <br>
   <br>
   <hr>
   
   
   </div>
  
   <div class="falis">
   <%@include file="project_footer.jsp" %>
   </div>

</body>

 </html>











