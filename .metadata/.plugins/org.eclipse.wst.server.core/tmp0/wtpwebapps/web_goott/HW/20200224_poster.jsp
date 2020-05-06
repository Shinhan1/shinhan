<%@page import="java.awt.Image"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWPoster.jsp</title>
</head>
<body>
	<!-- 
		배열
	
	이미지 목록 배열에 저장 => 브라우저에 포스터 10장 출력해보세요
	-->
	
	<% 
		out.println("<h2>영화 포스터 </h2>");
		String[] img = new String[10];
		for(int i = 0; i < img.length; i++ ){
			img[i] = "movie_img"+(i+1)+".jpg";
			out.println("<img src = '" + img[i] +"' width = '400px' height = '300px' />");
		}
		

		
		
	%>
	
	

</body>
</html>