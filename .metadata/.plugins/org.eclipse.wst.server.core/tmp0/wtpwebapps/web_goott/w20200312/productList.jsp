<%@page import="vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
	function ajaxToServer() {
		var txt = document.getElementById("txt").value;
		
		// ex) hello.jsp?txt=홍길동
		var params = "txt=" + encodeURIComponent(txt);
		
		
		sendRequest('ajaxEx06.jsp', params, callback, 'GET');
		//function sendRequest(url, params, callback, method){}
		
	}
	
	function callback() {
		// readyState : 0 ~ 4 단계 (4이면 완료)
		if(xhr.readyState==4) {
			// 그리고 정상페이지이면
			if(xhr.status==200){
				//alert(xhr.responseText);
				var div1 = document.getElementById("div1");
				
				div1.innerHTML = '<h1>' + xhr.responseText + '</h1>';
			}
		}
		
	}
	</script>
<style type="text/css">
	* {
		margin: 0px;
		padding: 0;
		background-color: pink;
	}
	
	#container {
		width: 1000px;
		margin: auto;
	}
	
	img {
		width : 300px;
		height: 300px;
	}
	
	.wrap {
		width: 300px;
		float: left;
		border : 1px solid red;
	}
	.red {color:red;}
	.price {text-decoration: line-through;}
	.ratio {font-style: }
	
	p{text-align:center;}
	
	input {
		background-color: skyblue;
		margin-left:60px;
	}
	
	
	
</style>
</head>
<body>
<!-- div#container>div[class="wrap"]>img+p{상품명}+p[class="price"]{상품가격}+p[class="red"]{마감임박}+p{할인율}+p[class="ratio"]{할인가격}+(input:button)*2 -->
	<input type="text" name="" id="txt" />
	<input type="button" value="검색" />
	
	<div id="div1"></div>
	<%
	ProductDAO dao = new ProductDAO();
	
	// 전체 데이터 조회
	ArrayList<ProductVO> list = dao.getAllData();
	for(ProductVO vo : list) {
		/* System.out.println(vo.getImgFile()); */
		int dc = vo.getPrice() - vo.getPrice()*vo.getDcratio()/100;
	
	%>
	
	<div id="container">
		<div class="wrap">
			<%-- <%= vo.getPno() %> --%>
			<a href="productDetail.jsp?pno=<%= vo.getPno() %>">
			<img src="<%= vo.getImgFile() %>" alt="<%= vo.getPname() %>" />
			</a>
			<p><%= vo.getPname() %></p>
			<p class="price"><%= vo.getPrice() %>원</p>
			<p class="red">마감임박</p>
			<p class="qty">수량 : <%= vo.getQty() %></p>
			<p><%= vo.getDcratio() %>% 할인</p>
			<p class="ratio"><%= dc %>원</p>
			<input type="button" value="장바구니" />
			<input type="button" value="즉시주문" />
		</div>
		
		<%
		}
		%>
	</div>
	

	
</body>
</html>