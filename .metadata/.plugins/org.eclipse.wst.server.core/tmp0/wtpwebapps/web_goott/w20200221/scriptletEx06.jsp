<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptEx06.jsp</title>
</head>
<body>
	<%!
		String name = "유관순";
		int kor = 90;
		int eng = 95;
		int math = 100;
		
	%>
	
	<%!
		public int sum() {
			int sum = kor + eng + math;
			
			return sum;
		}
	
		public double avg() {
			int avg = sum()/3;
		
			return avg;
		}
	%>	
	
	
	
	<!-- 
	출력해보세요 - 총점, 평균을 메소드로 만들어서 출력해보세요
	성적표 : h1
	div : size - 24px;
	각 한줄 개행해서
	성명 : 
	국어 :
	영어 :
	수학 :
	총점 :
	평균 :
	-->
	
	<h1>성적표</h1>
	<div style = "font-size:24px">
		-------------------------------- <br />
		성명 : <%= name %> <br />
		국어 : <%= kor %> <br />
		영어 : <%= eng %> <br />
		수학 : <%= math %> <br />
		총점 : <%= sum() %> <br /> 
		평균 : <%= avg() %> <br />
	
	</div>


</body>
</html>