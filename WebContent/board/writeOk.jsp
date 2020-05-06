<%@page import="goott_dao.BoardDAO"%>
<%@page import="goott_vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  사용자에게 보여줄 페이지가 아니므로 굳이 html코드를 남겨놓고 보기 힘들게 할 필요가없다.
    [writeOk.jsp] 
 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	<%
		//사용자가 입력한 데이터를 브라우저 화면에 출력해 보세요 .
		//바로 dbms에 접근하지말고 확인하는 습관을 가지세요!
		// 브라우저 또는 콘솔에 먼저 출력합시다.

		String writer = request.getParameter("wr");
		String title = request.getParameter("ti");
		String contents = request.getParameter("ct");

		//     out.println("write :" + id);
		//     out.println("title :" + title);
		//     out.println("contents :" + contents);

		//db에 연결후 write.jsp에서 전달해온 값을 저장
		BoardVO vo = new BoardVO();
		BoardDAO dao = new BoardDAO();

		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContents(contents);

		//사용자의 ip를 얻어오기
		String ip = request.getRemoteAddr();
		vo.setIp(ip);

		dao.addData(vo);

		//db에 저장이 잘 됐으면 게시판 메인으로 화면 이동 
		response.sendRedirect("list.jsp");
	%>

	<%--  <h2>작성자는 <%=writer %>입니다</h2> --%>
	<%--  <h2>타이틀은 <%=title %>입니다</h2> --%>
	<%--  <h2>당신의 내용은<%=contents %>입니다.</h2> --%>

</body>
</html>
