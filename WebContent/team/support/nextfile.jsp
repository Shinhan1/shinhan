<%@page import="dao.SsabalDAO"%>

<%@page import="vo.SsabalVO"%>
<%@page import="java.util.ArrayList"%>

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
</head>
<body>
<%
int done = Integer.parseInt(request.getParameter("person"));
int donew = Integer.parseInt(request.getParameter("personboxDirect"));

int fore = Integer.parseInt(request.getParameter("foreign"));
int forew = Integer.parseInt(request.getParameter("foreignboxDirect"));

int kor = Integer.parseInt(request.getParameter("korea"));
int korw = Integer.parseInt(request.getParameter("koreaboxDirect"));

int em = Integer.parseInt(request.getParameter("emer"));
int emw = Integer.parseInt(request.getParameter("emerboxDirect"));



System.out.println(done);


System.out.println(fore);
//System.out.println(forew);

System.out.println(kor);
//System.out.println(korw);

System.out.println(em);

System.out.println("해외 : "+forew+"개인 : "+donew+"국내 : "+korw+"긴급 : "+emw);

int total = done+fore+kor+em+donew+forew+korw+emw;

System.out.println(total);


/* 토탈 총 후원금이 0원 일 경우 알림으로 후원금이 없다고 말하고 결제방법 선택 페이지로 이동 */
if(total==0){
	out.println("<script>alert('후원금이 없습니다.'); document.location.href='NewFile.jsp';</script>");
}


%>

<form action="travis2.jsp">
<input type="hidden" name="done" value="<%=done%>"/>
<input type="hidden" name="done" value="<%=donew%>"/>
<input type="hidden" name="fore" value="<%=fore%>"/>
<input type="hidden" name="fore" value="<%=forew%>"/>
<input type="hidden" name="kor" value="<%=kor%>"/>
<input type="hidden" name="kor" value="<%=korw%>"/>
<input type="hidden" name="em" value="<%=em%>"/>
<input type="hidden" name="em" value="<%=emw%>"/>
<input type="hidden" name="tatal" value="<%=total%>"/>


  <table class="table">
    <caption>표 제목</caption>
    <tr>
    	<th style="border-right: hidden;"></th>
    	<th style="border-right: hidden;">후원방법</th>
    	<th style="border-right: hidden;"></th>
    </tr>

		<tr>
			<td style="border-right: hidden;">카카오페이로 후원</td>
			<td style="border-right: hidden;"></td>
			<td style="border-right: hidden;">
				<img src="../image/wowowo.png" alt="" />
				<input type="checkbox" name="check" id="check" value="99" style="width: 20px; height: 20px"/>
			</td>
		</tr>
		<tr>
			<td style="border-right: hidden;">신용카드로 후원</td>
			<td style="border-right: hidden;"></td>
			<td style="border-right: hidden;">
				<img src="../image/card.jpg" alt="" />
				<input type="checkbox" name="check" id="check" value="88" style="width: 20px; height: 20px"/>
			</td>
		</tr>
		<tr>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden; color: red;">총 후원금 : <%= total %></td>
		</tr>


			<tr>
				<td style="border-right: hidden; border-bottom:none;"></td>

					<td style="border-bottom:none;  text-align: center;">
					<br></br><br></br>
						<input type="submit" value="후원하기" id="btn" style="width: 150px; height: 78px; text-align: center; font-size: 18px; "/>
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



</body>
</html>