<%@page import="goott_dao.BoardV3_DAO"%>
<%@page import="goott_vo.BoardVO"%>
<%@page import="goott_dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>
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

.row {
	width: 200px;
}
</style>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var oEditors = [];
	
	window.onload = function() {
		
		// 네이버 스마트 에디터 skin 적용
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ct",
		 sSkinURI: "../se2/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
		
	}
	
	// 네이버 스마트 에디터 사용2 - 데이터 전송
	function submitForm(obj) {
		// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
		//function submitContents(elClickedObj) {
		 // 에디터의 내용이 textarea에 적용된다.
		 oEditors.getById["ct"].exec("UPDATE_CONTENTS_FIELD", []);

		 // 에디터의 내용에 대한 값 검증은 이곳에서
		 // document.getElementById("ct").value를 이용해서 처리한다.

		 try {
		     obj.form.submit();
		 } catch(e) {}
		 
		//}
	}
</script>
</head>
<body>
	<!-- 게시글 번호에 따른 데이터 조회 결과를 각 TD에 출력해 보세요. -->
	<!--     table>tr#top>(th#t$+td)*3 -->
	<%
		String no = request.getParameter("bno");
		BoardV3_DAO dao = new BoardV3_DAO();
		BoardVO vo = new BoardVO();

		if (no != null) {
			int bno = Integer.parseInt(no);

			vo = dao.getData(bno);
		} else {
			response.sendRedirect("list.jsp");
		}
	%>

	<form action="modifyOk.jsp">
		<input type="hidden" name="bno" value="<%= vo.getBno() %>" />
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
				<td colspan="5">
					<input type="text" name="title" id=""
					value="<%=vo.getTitle()%>" size="30" />
					</td>
			</tr>
			<tr id="contents">
				<th>내용</th>
				<td colspan="5">
					<textarea name="contents" id="ct" cols="200"
						rows="10"><%=vo.getContents()%>
					</textarea> <!-- disalbled 는textarea에서 사용자가 함부로 내용을 바꿀수없도록 block 해놓는 것이다. -->
				</td>
			</tr>
			<tr>
				<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a> 
				<a href="modify.jsp?bno=<%= vo.getBno() %>"><input type="button" value="수정" onclick="submitForm(this)"/></a> 
				<a href="deleteOk.jsp?bno=<%= vo.getBno() %>"><input type="button" value="삭제" /></a>
				
				</td>
			</tr>
		</table>
	</form>
</body>
</html>