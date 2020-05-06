<%@page import="tim_Project_Dao.board_QA_Dao"%>
<%@page import="tim_Project_VO.board_QA_VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 페이징 처리 */
	
	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");

	int currentPage = 0;
	
	if(cp != null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}
	
	board_QA_Dao dao = new board_QA_Dao();
	
	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	
	// 한 페이지당 레코드 수 : 10
	int recordByPage = 5;
	
	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자
	
	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1; 
	
	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	String sel = request.getParameter("ri_in_sel");
	System.out.println(sel);
	
	
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<!-- inquiry.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/inquiry.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
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
		
	});

	function selectData(frm){
		if(frm.ri_in_sel.value == "") {
			alert("검색 단어를 입력하세요!!");
			frm.ri_in_sel.focus();
			return;
		}
		frm.submit();
		
	}
	
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
							<span>문의하신 내용은 평일 근무일 기준 익일까지 답변됩니다.</span>
							<input type="button" value="문의하기" id="inquiryBt" onclick="location.href='boardWrite.jsp'"/>
						
							<table id="right_inner_table">
								<tr>
									<th><span>No</span></th>
									<th><span>후원분야</span></th>
									<th><span>제목</span></th>
									<th><span>후원신청일</span></th>
									<th><span>상태</span></th>
								</tr>
								<%
									int cnt = dao.getTotalCount();
									if(cnt == 0) {
								%>
								<tr class= "right_inner_qrow">
									<td colspan="5">
										<div>문의하신 내역이 없습니다.</div>
									</td>
									
								</tr>
								<%
									}
									else {
								%>
								
								<!--  사용자가 작성한 게시글을 전부 출력해보세요 -->
								<%
									if(sel == null) {
									ArrayList<board_QA_VO> list = dao.getAllData(startNo, endNo);
									for (board_QA_VO vo : list) {
								%>
								<tr id = "mng">
										<td class="col1"><span><%=vo.getQa_bno()%></span></td>
										<td class="col2"><span><%=vo.getQa_inquiry() %></span></td>
										<td class="col3">
											<a href="boardWrite_de.jsp?bno=<%= vo.getQa_bno() %>">
												<span><%=vo.getQa_title()%></span>
											</a>
										</td>
										<td class="col4"><span><%=vo.getQa_date()%></span></td>
										<td class="col5"><span><%=vo.getQa_status()%></span></td>
									
								</tr>


	
						        <%
										} 
						        		
									}else {
						        		ArrayList<board_QA_VO> li = dao.selectData(sel);
										for (board_QA_VO vo1 : li) { 
											
											System.out.println(vo1.getQa_bno());
											System.out.println(vo1.getQa_title());
											
								%>
								 <tr id = "mng">
									<a href="boardWrite_detail.jsp?bno=<%= vo1.getQa_bno() %>"></a>
										<td class="col1"><span><%=vo1.getQa_bno()%></span></td>
										<td class="col2"><span><%=vo1.getQa_inquiry() %></span></td>
										<td class="col3"><span><%=vo1.getQa_title()%></span></td>
										<td class="col4"><span><%=vo1.getQa_date()%></span></td>
										<td class="col5"><span><%=vo1.getQa_status()%></span></td>
									
								</tr>
								<%
											}
										}
									}
									
								%>
								
						        
							</table>
							<div class="page">
								<% 
					      			for(int i = currentPage-10; i <= currentPage+10; i++) {
					      				if(i <= 0) {
					      					continue;
					      				}else if (i > totalPage) {
					      					break;
					      				}else {
					      			
					      		%>
					      		<a href="inquiry.jsp?cp=<%= i %>"><span id="page">[<%= i %>]</span></a>
					      		
					      		<%
					      				}	// if() end
					      		
					      			}	// for() end
					      		%>
							</div>
							<div class="ri_in_div">
								<form action="inquiry.jsp" name="frm">
									<input type="text" name="ri_in_sel" id="ri_in_sel" placeholder="검색어를 입력해주세요." />
									<input type="image" src="../image/select.png" alt="" id="selbt" onclick="selectData(frm)" />
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		
			<jsp:include page="../etc/project_footer.jsp"></jsp:include>
		
	</div>

</body>
</html>