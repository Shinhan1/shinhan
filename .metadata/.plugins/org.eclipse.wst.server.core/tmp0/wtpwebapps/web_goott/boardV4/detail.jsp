<%@page import="java.util.ArrayList"%>
<%@page import="vo.ReBoardVO"%>
<%@page import="dao.ReBoardDAO"%>
<%@page import="dao.BoardV3_DAO"%>
<%@page import="dao.BoardV2_DAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail.jsp</title>
<style type="text/css">
table {
	width: 900px;
	margin: 0 auto;
}

table, tr, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th {
	padding: 2px;
	font-size: 20px;
	background-color: #FF6666;
}

#contents {
	background-color: #FFCCFF;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#delConfirm").on('click', function() {

			//console.log("click");
			var flag = confirm("정말 삭제하시겠습니까?");

			if (flag) {
				console.log("삭제 수행");

				// 창 이동시키기 -> deleteOK.jsp -> 삭제 기능을 수행해보세요
			}
			;
		});

	});

	<!--
//-->
</script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var oEditors = [];
	
	window.onload = function() {
		
		// 네이버 스마트 에디터 skin 적용
		nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ct",
		sSkinURI: "../se2/SmartEditor2Skin.html",
		htParams: {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		},
		fCreator : "createSEditor2"
		 
		});
		
	}
	
</script>
</head>
<body>
	<!-- 게시글 번호에 따른 데이터 조회 결과를 각 TD에 출력해 보세요. -->
	<!--     table>tr#top>(th#t$+td)*3 -->
	<%
		//jsp page 우선순위  => jsp -> javascriptlet
		String no = request.getParameter("bno"); //bno으로 정보를 받아올때bno가 필요하기떄문에 데이터정보를 받아옵니다
		
		// 게시글 table
		BoardV3_DAO dao = new BoardV3_DAO();
		BoardVO vo = new BoardVO();

		// 댓글 table
		ReBoardDAO rdao = new ReBoardDAO();
		ReBoardVO rvo = new ReBoardVO();
		//    if (no != null) {  //bno가 null값이 아닐떄는  값을 받아온다            
		//       int bno = Integer.parseInt(no); //상품번호는 int로 받아야하기떄문에. (DAO페이지에서 메소드를 int로 선언)

		//       vo = dao.getData(bno);
		//    }
		
		int bno = 0;
		
		if (no != null) {
			bno = Integer.parseInt(no);
			// 조회수 증가 메소드 추가
			dao.raiseHits(bno);

			vo = dao.getData(bno);
		} else {
			response.sendRedirect("list.jsp");
		}
	%>
	<table>
		<tr id="top">
			<th id="t1">작성자</th>
			<td><%=vo.getWriter()%></td>
			<th id="t2">조회수</th>
			<td><%=vo.getHits()%></td>
			<th id="t3">작성일시</th>
			<td><%=vo.getRegdate()%></td>
		</tr>


		<tr id="title">
			<th>제목</th>
			<td colspan="5"><%=vo.getTitle()%></td>
		</tr>
		<tr id="contents">
			<th>내용</th>
			<td colspan="5"><textarea disabled="disabled" name="ct" id="ct"
					cols="200" rows="10"><%=vo.getContents()%></textarea> <!-- disalbled 는textarea에서 사용자가 함부로 내용을 바꿀수없도록 block 해놓는 것이다. -->
			</td>
		</tr>
		<tr>
			<td colspan="6">
			<a href="list.jsp"><input type="button"value="목록" /></a> 
			<a href="modify.jsp?bno=<%=vo.getBno()%>"><input type="button" value="수정" /></a>
			<a href="deleteOk.jsp?bno=<%=vo.getBno()%>"><input type="button" value="삭제" id="delConfirm" /></a>
			</td>
		</tr>
		
	</table>
	
	<br />
	<br />
	
	<form action="replyOk.jsp">
		<table>
			<tr>
				<th>댓글 작성</th>
				<td>
					<input type="text" name="retxt" id="" size="30" />
					<input type="hidden" name="bno" value="<%= vo.getBno() %>" />
					<input type="submit" value="작성" />
				</td>
			</tr>
			<%
				ArrayList<ReBoardVO> list = rdao.getAllReply(bno);
				/* ArrayList<ReBoardVO> list = rdao.getAllReply(); */
		
				for(ReBoardVO revo : list) {
					/* if(bno==revo.getRef()) { */
						
					
		
			%>
			<tr>
				<td colspan="2">
					<textarea disabled="disabled" name="" id="" cols="80" rows="5"><%= revo.getContents().trim() %></textarea>
				</td>
			</tr>
			<%
					//}	// if() end
				}	// for() end
			%>
		</table>
		
	</form>
	

</body>
</html>