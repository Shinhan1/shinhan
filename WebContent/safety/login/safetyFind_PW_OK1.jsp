<%@page import="dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_PW_OK1.jsp</title>
<%  /* 핸드폰으로 비밀번호 변경 */
String id = request.getParameter("id");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp = hp1+hp2;



Join1_DAO dao = new Join1_DAO();



boolean flg = dao.isExist_findID(id, hp);	


if(flg){
		
	response.sendRedirect("../");/* 수정하기 창으로 가기 */

}else{
	%>
	  <script>
      alert("일치하는 이름과 이메일이 없습니다..");
      location.href = "safetyFind_ID.jsp";
  </script>
	<%
	}
	%>
</head>

<body>





</body>

</html>

