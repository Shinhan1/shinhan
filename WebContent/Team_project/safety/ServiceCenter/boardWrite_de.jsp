<%@page import="tim_Project_Dao.board_QA_Dao"%>
<%@page import="tim_Project_VO.board_QA_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String no = request.getParameter("bno");
	board_QA_VO vo = new board_QA_VO();
	board_QA_Dao dao = new board_QA_Dao();
	
	if (no != null) {
		int bno = Integer.parseInt(no);
		// 조회수 증가 메소드 추가
		dao.raiseHits(bno);
		
		vo = dao.getData(bno);
	} else {
		response.sendRedirect("inquriy.jsp");
	}
	
	String email_domain = vo.getQa_email();
	int pos = email_domain.indexOf('@');
	String email = email_domain.substring(0, pos);
	String domain = email_domain.substring(pos+1, email_domain.length());
	
	
%>


<html>
<head>
<meta charset="UTF-8">
<title>문의 상세보기</title>
<!-- boardWrite_de.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/boardWrite_de.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var domain = '<%= domain %>';
	$(function() {

		$('.nav').mouseover(function() {

			$(this).css("border-bottom", "2px solid red");

		});

		$('.nav').mouseout(function() {

			$(this).css("border-bottom", "none");

		});

		$('.ub').mouseover(function() {

			$(this).css("border", "1px solid red");

		});

		$('.ub').mouseout(function() {

			$(this).css("border", "1px solid #BDBDBD");

		});	
		
		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
		
	});
	
	
	
	
	
	
</script>
</head>
<body>
	<input type="image" src="../image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
			<jsp:include page="../etc/project_nav.jsp"></jsp:include>
			
			
		<div class="main">
			<div class="customer">
			</div>
			<div class="boardBack">
				<jsp:include page="backBoard_left.jsp"></jsp:include>
		
				<div class="boardBack_right">
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="boardWrite_modify.jsp" name="frm">
								<input type="hidden" name="bno" value="<%= vo.getQa_bno() %>" />
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<input type="text" name="inquiry_area" id="inquiry_area" 
												value="<%= vo.getQa_inquiry() %>" disabled />
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" 
											value="<%= vo.getQa_title() %>" disabled /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta">
												<textarea name="ct" id="ct" cols="60" rows="20" disabled><%= vo.getQa_contents() %></textarea>
											</td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email">
													<input type="text" name="email" id="email" class="table_input" value="<%= email %>" disabled />
													<span>@</span>
													<input type="text" name="domain" id="domain" class="table_input" value="<%= domain %>" disabled />
												</div>
													
											</td>
										</tr>
										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0" disabled>답변된 내용이 없습니다.</textarea>
												</div>
											</td>
										</tr>
									</table>
									<div class="table_button" >
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry.jsp'" />
										<a href="boardWrite_detail.jsp?bno=<%= vo.getQa_bno() %>">
											<input type="button" value="수정" class="table_Bt second" />
										</a>
									</div>
								
								</form>	
							</div>
						</div>		<!-- boardBack_right end -->
						
					</div>
				</div>
			</div>
		
			<jsp:include page="../etc/project_footer.jsp"></jsp:include>
		

</body>
</html>