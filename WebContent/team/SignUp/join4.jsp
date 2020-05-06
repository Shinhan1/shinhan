<%@page import="vo.Join1_VO"%>
<%@page import="dao.Join1_DAO"%>
<%@page import="dao.Join2_DAO"%>
<%@page import="vo.Join2_VO"%>
<%@page import="project.MailSend"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join4.css" type="text/css" />
<!-- <script type="text/javascript">
(function () {
	window.open("./test_mail.jsp", "", "width=200, height=200, , left=700, top=250,resizable=no, scrollbars=no, status=no");
}());


</script> -->
</head>
<body>
<div id="contents" class="container">
	<div class="head">
		<h1 style="font-size: 29px">회원 가입</h1>
	</div>
	
	
	<ul>
		<li class="topLi" style="left: 100px"><i class="ibefore"></i>
			<h2>약관동의</h2></li>
		<li class="topLi" style="left: 280px"><i class="ibefore"></i>
			<h2>정보입력</h2></li>
		<li class="topLi" style="left: 460px"><i
			style="background-color: #3E66AE"></i>
			<h2>가입완료</h2></li>
	</ul>
	
	
	
	<div class="member-contents">
		<div class="contents"> 
			<div class="finish-title" id="finish-title">
				<%
				/* 회원 아이디 불러오기 */
					request.setCharacterEncoding("UTF-8");
					String name = (String)request.getSession().getAttribute("userName"); 
					
					
					System.out.println(name);
					 
					
					
					/* String email = email1+"@"+email2;
					MailSend send = new MailSend();
					send.setWhoGet(email); */
					
					
				%>

				
				
				<h1 class="welcomeTxt"><%=name%>님, 회원가입이 완료되었습니다.
				</h1>
				<h2 class="welcomeTxt2">SAFTY와 함께 이웃을 위한 나눔을 시작해보세요</h2>

			</div>	<!-- finish-title -->
			
			<a class="btn btn-dark" id="toHome" href="<!-- 메인페이지 -->" style="margin-top: 60px">홈으로 이동</a>

			<div class="finish-grid-wrap"> 
				<ul>
					<li class="finish-grid-1" id="finish-grid-1"><a href="" class="none"
						title="후원자가이드 페이지 이동">
							<h2>후원이 처음이라면</h2>
							<h1>후원자가이드</h1> <i></i>
					</a></li>
					<li class="finish-grid-2" id="finish-grid-2"><a href="" class="none"
						title="후원하기 페이지 이동">
							<h2>후원을 원하신다면</h2>
							<h1>후원하기</h1> <i></i>
					</a></li>
					<li class="finish-grid-3" id="finish-grid-3"><a href="" class="none"
						title="소식보기 페이지 이동">
							<h2>후원이야기가 궁금하시면</h2>
							<h1>소식보기</h1> <i></i>
					</a></li>
				</ul>
			 </div>  
 		</div>	 	<!-- contents -->
	
		
		
		
		
	</div>
	<!-- member-contents end -->


	</div>
</body>
</html>