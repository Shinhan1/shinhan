<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	/* jsp page 우선순위 : jsp먼저 읽고 다음 자바스크립트를 읽음  */
	String no = request.getParameter("pno");
	ProductDAO dao = new ProductDAO();
	ProductVO vo = new ProductVO();
	
	if(no != null){
		int pno = Integer.parseInt(no);
		
		vo = dao.getData(pno);
	}


%>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>
<style type="text/css">
#container{margin: 10px; background-color: pink;}
#pImg{
	width: 500px;
	height: 500px;

}
#pic {
	float: left;
}

#desc {
	margin: 30px;
	float:left;

}

#dc {
	color: red;
	font-weight: bold;
}

#price {
	text-decoration: line-through;
}

#imgBtns {
	border-top : 1px solid gray;
}

#name {
	border-top: 3px solid black;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#cart").on('click', function(){
			//console.log("cart click");
			
			var pno = <%= vo.getPno() %>
			
			//console.log("pno : " + pno);
			
			$("#no").val();
			
			document.frm.action = "cart.jsp";
			document.frm.submit();
			
			
		});
		
	});


</script>

</head>
<body>
	<form action="#" name = "frm">
		<input type="hidden" name="no" id="no" value="<%= vo.getPno() %>"/>
	</form>


	<div id="container">
		<div id="pic"><img src="<%= vo.getBigFile() %>" alt="<%= vo.getPname() %>" /></div>
		<div id="desc">
			<p>
				<h3><%= vo.getProdesc() %></h3>
			</p>
			<p id="name">상품명 : <%= vo.getPname() %></p>
			<p>상품가 : <%= vo.getPrice() %>원</p>
			<p id="dc">할인가 : <%= vo.getPrice()-vo.getPrice()*vo.getDcratio()/100 %>원</p>
			<div id="imgBtns">
				<img src="../images/btn_buy.jpg" alt="즉시 구매" />
				<%-- <a href="cart.jsp?pno=<%= vo.getPno() %>"> --%>
				<img src="../images/btn_cart.jpg" alt="장바구니" id="cart"/>
				<!-- </a> -->
				<img src="../images/btn_wish.jpg" alt="위시리스트" />
			</div>
		</div>
	</div>
	

</body>
</html>