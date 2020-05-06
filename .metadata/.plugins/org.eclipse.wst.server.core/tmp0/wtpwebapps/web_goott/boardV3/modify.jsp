<%@page import="dao.BoardV3_DAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
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
					<textarea name="contents" id="" cols="200"
						rows="10"><%=vo.getContents()%>
					</textarea> <!-- disalbled 는textarea에서 사용자가 함부로 내용을 바꿀수없도록 block 해놓는 것이다. -->
				</td>
			</tr>
			<tr>
				<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a> 
				<a href="modify.jsp?bno=<%= vo.getBno() %>"><input type="submit" value="수정" /></a> 
				<a href="deleteOk.jsp?bno=<%= vo.getBno() %>"><input type="button" value="삭제" /></a>
				
				</td>
			</tr>
		</table>
	</form>
</body>
</html>