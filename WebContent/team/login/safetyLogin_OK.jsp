<%@page import="dao.Join1_DAO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>JSP</title>

</head>
 
<body>
<%
	// id, pw 정보를 받아와서 DB에 접근
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String loginChk = request.getParameter("ckb");
	out.println(id);
	out.println(pw);

	Join1_DAO dao = new Join1_DAO();

	// 그 DB에 회원이 있는지 확인!
	boolean flg = dao.isExist(id, pw);				// isOk에서 true, false가 출력됨
	out.println(flg);

	// 회원이면 로그인 가능 -> 쿠키를 이용!!
	if(flg){
		 String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것
		session.setAttribute("id",id);
		response.sendRedirect("../mainpage/safetyNavi.jsp");


		/*-----------------------쿠키로 로그인 부분 -------------------------------------- */
		/* String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것

		Cookie c = new Cookie("memberLogin", userID); //두개다 가지고 있어야 한다.
		c.setMaxAge(60*60*24); //시간
		c.setPath("/");

		response.addCookie(c); // 사용자 브라우저에 넣어주고 쿠치추가
		response.sendRedirect("safetyLogin.jsp");				// memberLogin을 CK로 보냄 */
	}else{
		%>
		  <script>
	        alert("아이디 및 비번이 틀렸습니다.");
	        location.href = 'safetyLogin.jsp';
	    </script>
		<%
		}
		%>
<script type="text/javascript">

</script>



</body>

</html>

