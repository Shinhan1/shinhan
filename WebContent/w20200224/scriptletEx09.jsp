<%@page import="java.awt.Image"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx09.jsp</title>
</head>
<body>
	<!-- 
		배열
	
	이미지 목록 배열에 저장 => 브라우저에 포스터 10장 출력해보세요
	-->
	
	<% 
		String[] images = {
				"movie_img1.jpg", "movie_img2.jpg", "movie_img3.jpg", "movie_img4.jpg", "movie_img5.jpg",
				"movie_img6.jpg", "movie_img7.jpg", "movie_img8.jpg", "movie_img9.jpg", "movie_img10.jpg", 
		};
		out.println("<h2>영화 포스터 </h2>");
		for(int i =0; i<images.length; i++) {
			out.println("<img src = '" + images[i] +"' width = '400px' height = '300px' />");
		}
		
	%>
	
	

</body>
</html>