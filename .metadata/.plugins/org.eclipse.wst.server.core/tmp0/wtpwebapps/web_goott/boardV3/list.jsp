<%@page import="dao.BoardV3_DAO"%>
<%@page import="vo.BoardVO"%>
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
	
	BoardV3_DAO dao = new BoardV3_DAO();
	
	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	
	// 한 페이지당 레코드 수 : 10
	int recordByPage = 10;
	
	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자

	/*
	현재 페이지 번호
	  1    2    3    4   ......
	
	각 페이지 별 레코드 번호
	  1   11   21   31   ......
	  
	 10   20   30   40 
	

	*/
	
	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1; 
	
	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	/*
	out.println("총 게시물 수 : " + totalCount);
	out.println("한 페이지당 게시물 수 : " + recordByPage);
	out.println("총 페이지 수 : " + totalPage);
	out.println("현재 페이지 번호 : " + currentPage);
	out.println("현재 페이지 시작 번호 : " + startNo);
	out.println("현재 페이지 끝 번호 : " + endNo);
	*/
	
%>  
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
table {
   width: 1000px;
   margin: 0 auto;
}

table, tr, th, td {
   border: 1px solid black;
   border-collapse: collapse;
}

th {
   padding: 2px;
   font-size: 20px;
   background-color: skyblue;
   text-shadow: 2px, 2px, 2px, #ffffff;
}

.btn {
   text-align: right;
}

.col1 {
   width: 15%;
   text-align: center;
}

.col4 {
   width: 15%;
   text-align: center;
}

.col2 {
   width: 50%;
}

.col3 {
   width: 20%;
   text-align: center;
}
#page {
	width:10px;
	padding:2px;
	margin : 0;
	border : 1px solid black;
}

#pageList {
	text-align: center;
	
}

.red {
	color:red;
	font-size : 20px;
	height: 100px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// tr - 첫번째 tr이 0번째임
		// :nth-child(1) - 첫 번째가 1번째
	
		$("tr:first").css("background-color", "pink");
		$("tr:last").css("background-color", "pink");
		$("tr:odd").css("background-color", "yellow");
		
		// 마우스가 over 되면 red 클래스 삽입
		$("th").on('mouseover', function(){
			//$(this).addClass("red");
			$(this).toggleClass("red");
			
			
		});
		$("th").on('mouseout', function(){
			$(this).removeClass("red");
			
			
		});
		
		$(".manage").on('click', function(){
			//console.log("관리~~~");
			var status = confirm("블라인드처리 할까요??");

			if (status) {
				console.log("블라인드 ~~");
				$("#mng").hide(); 
				
			}
			
		});
		
	});
</script>
<title>list.jsp</title>
</head>
<body>
   <!--    table>tr>th[class='col$']*4 -->
   <table>
      <tr>
         <th class="col1">게시물번호</th>
         <th class="col2">제목</th>
         <th class="col3">작성자</th>
         <th class="col4">조회수</th>
      </tr>


      <!--  사용자가 작성한 게시글을 전부 출력해보세요 -->
      <%
         //          String writer = request.getParameter("wr");
         //           String title = request.getParameter("ti");   //이건 그냥 데이터를 이동시킬떄 하는것. writer -> writerOk로 보낼떄
         //           String contents = request.getParameter("ct");    // 전송하고 받을떄 writerOk에서 사용합니다.

         ArrayList<BoardVO> list = dao.getAllData(startNo, endNo);

         for (BoardVO vo : list) {
      %>
      <tr id = "mng">
         <td class="col1"><%=vo.getBno()%></td>
         <td class="col2"><a href="detail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle() %></a>
         <input type="button" value="관리" class="manage"/>
         </td>
         <td class="col3"><%=vo.getWriter()%></td>
         <td class="col4"><%=vo.getHits()%></td>
      </tr>

      <%
         }
      %>
      <tr>
      	<td colspan = "4" id = "pageList">
      		<% 
      			for(int i = currentPage-3; i <= currentPage+3; i++) {
      				if(i <= 0) {
      					continue;
      				}else if (i > totalPage) {
      					break;
      				}else {
      			
      		%>
      		<a href="list.jsp?cp=<%= i %>"><span id="page">[<%= i %>]</span></a>
      		
      		<%
      				}	// if() end
      		
      			}	// for() end
      		%>
      		
      	</td>
      </tr>
      
      
      <tr>
         <td colspan="4" class="btn"><a href="write.jsp">
         <input type="button" value="등록" /></a>
         </td>
      </tr>


   </table>

</body>
</html>