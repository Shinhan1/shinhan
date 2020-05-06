<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
</style>
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

         BoardDAO dao = new BoardDAO();
         ArrayList<BoardVO> list = dao.getAllData();

         for (BoardVO vo : list) {
      %>
      <tr>
         <td class="col1"><%=vo.getBno()%></td>
         <td class="col2"><a href="detail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle() %></a></td>
         <td class="col3"><%=vo.getWriter()%></td>
         <td class="col4"><%=vo.getHits()%></td>
      </tr>

      <%
         }
      %>
      <tr>
         <td colspan="4" class="btn"><a href="write.jsp">
         <input type="button" value="등록" /></a>
         </td>
      </tr>


   </table>

</body>
</html>