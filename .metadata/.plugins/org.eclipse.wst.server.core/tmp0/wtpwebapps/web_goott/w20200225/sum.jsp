<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sum.jsp</title>
</head>
<body>
	<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		// System.out.println("num1 : " + num1 + ", num2 : " + num2); 
		
		int n1 = 0, n2 = 0, result = 0;
		//int n1 = Integer.parseInt(num1);
		//int n2 = Integer.parseInt(num2);
		
		if(num1 != null && num2 != null) {
			n1 = Integer.parseInt(num1);
			n2 = Integer.parseInt(num2);
			
			result = n1 + n2;
			
			out.println("n1 : " + n1 + ", n2 : " + n2 + ", result : " + result);
		}
		
		//int result = n1 + n2;
		
		//out.println(result);
		
	%>
	<form action="">
		<input type="text" name="num1" id="" value="<%=n1%>"/>
		+
		<input type="text" name="num2" id="" value="<%=n2%>"/>
		<input type="submit" value="=" />
		<input type="text" name="result" id="" value="<%=result %>" />
	</form>

</body>
</html>