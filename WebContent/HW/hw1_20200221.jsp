<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hw1</title>
</head>
<body>
	<!-- 랜덤하게 10개의 메시지중 1개 출력 -->
	<%
		String msg[] = new String[10];
		msg[0] = "치킨";
		msg[1] = "피자";
		msg[2] = "소주";
		msg[3] = "맥주";
		msg[4] = "닭갈비";
		msg[5] = "햄버거";
		msg[6] = "돈까스";
		msg[7] = "찜닭";
		msg[8] = "갈비";
		msg[9] = "삼겹살";
		
		String message = msg[RanMsg()];
		
		
		
	%>
	
	<%!
		public int RanMsg() {
			int rnd = (int)(Math.random()*10);
			return rnd;
		}
	%>
	
	<h2>열 가지 메시지 중 랜덤으로 한 가지 메세지 출력</h2>
	<h3>메시지 : <%= message %></h3>
	


</body>
</html>