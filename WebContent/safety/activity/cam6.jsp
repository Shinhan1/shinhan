<%@page import="java.util.ArrayList"%>
<%@page import="vo.CampaignVO"%>
<%@page import="dao.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/camcss.css">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String no = request.getParameter("bno");		//삭제 기능 수행 해야하므로 위에 올리기

	CampaignDAO dao = new CampaignDAO();
	CampaignVO vo = new CampaignVO();

	if(no!=null){
		int bno = Integer.parseInt(no);

			vo = dao.getData(bno);
		}else{
			response.sendRedirect("campaign.jsp");	//DB터지면 최초 화면으로 돌려놓기
		}
 %> 

 <%

	String cp = request.getParameter("cp");

	int currentPage = 0;

	if(cp!=null){
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}


	int totalCount = dao.getTotalCount();


	int recordByPage = 5;

	// 총 페이지 수
	int totalPage =
		(totalCount%recordByPage==0)?totalCount/recordByPage:totalCount/recordByPage+1;





	int startNo = (currentPage-1)*recordByPage+1;


 	int endNo = currentPage*recordByPage;


%>
<style type="text/css">
	* {font-family: "나눔스퀘어";}
	.btn1 {
		margin-right: 10px;
		width: 100px;
		height: 30px;
		float: right;
	}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#delConfirm").on('click', function(){
			console.log("click");

			var flag = confirm("정말 삭제하겠습니까?");

			if(flag){
				//console.log("삭제 수행");
				//창 이동시키기 -> deleteOk.jsp -> 삭제기능을 수행해보세요
				location.href = "camdeleteOk.jsp?bno=<%=vo.getBno() %> ";
			}

		});
	});
</script>
</head>
<body>

<jsp:include page="../etc/sf_nav.jsp"></jsp:include>

<div style="width:1200px; margin: 0 0 0 360px;">
	<img alt="" src="../image/cam6-1.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-2.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-3.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-4.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-5.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-6.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-7.jpg" style="width: 100%;">
	<img alt="" src="../image/cam6-8.jpg" style="width: 100%;">

	<div style="text-align: center; margin-top: 50px;">
	<input type="button" value="후원하기 " style="width: 185px; height: 68px; background-color: #da281f; color: white; font-size: 19px;" />
	</div>
	<div>
		<a href="campaign.jsp"><input class="btn1" type="button" value="목록" /></a>
		<a href="cammodify.jsp?bno=<%=vo.getBno() %>"><input class="btn1" type="button" value="수정" /></a>
		<input class="btn1" type="button" value="삭제" id="delConfirm"/>
	</div>
<div id="contents" >
		<div id="container">
		<div style="width: 1200px; height:80px; "><h2 style="float: left;">캠페인 공유하기</h2>
		 <input style="float: left; width: 30px; height: 30px; margin: 20px 0 0 20px;" type="image" src="../image/face.png" alt="페이스북" onclick="location.href='http://www.facebook.com'"/>

            <input style="float: left; width: 30px; height: 30px; margin: 20px 0 0 10px;" type="image" src="../image/ins.png" alt="인스타그램" onclick="location.href='http://www.instagram.com'"/>
		</div>
		<%

			ArrayList<CampaignVO> list = dao.getAllData(startNo, endNo);

			for(CampaignVO vo2 : list) {

		%>
		<div id="com">

			<a href="<%=vo2.getCamlink() %>?bno=<%=vo2.getBno() %>">
				<img id="camimg" src="<%=vo2.getCamimg() %>" alt="<%=vo2.getCamtitle() %>" />
			</a>
			<p><%=vo2.getCamtitle() %></p>
			<p><%=vo2.getCamcontents() %></p>


		</div>

		<%
			}
		%>
		</div>
	<div id="paging">
	<table>
	<tr>
			<td id="pageList">
				<%
					for(int i=currentPage-3; i<=currentPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%>

				<a href="cam1.jsp?cp=<%=i %>"><span id="page"></span></a>
				<%
					}// if end

				}// for end

				%>

			</td>
		</tr>
	</table>

	<div>
	<a href="cam1.jsp?cp=<%=currentPage+1 %>"><div style=" margin-top:-210px; width: 40px; height: 40px;float: right;">
		<img src="../image/right.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	<a href="cam1.jsp?cp=<%=currentPage-1 %>"><div style=" margin-top:-210px; width: 40px; height: 40px;float: left;">
		<img src="../image/left.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	</div>

	</div>


	</div>

</div>
<jsp:include page="../etc/project_footer.jsp"></jsp:include>
</body>
</html>