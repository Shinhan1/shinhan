<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>address.jsp</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

	function openDaumPost(){
		new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            
	            // 우편번호와 주소 정보를 해당 필드에 넣는다
	        	document.getElementById('post').value = data.zonecode;
                document.getElementById("addr1").value = roadAddress;
                document.getElementById("addr2").value = data.jibunAddress;
                
	            
	        }
	    }).open();
		
		
	}
    
</script>
</head>
<body>
	<input type="text" name="" id="post" placeholder="우편번호" />
	<input type="button" value="우편번호 찾기" onclick="openDaumPost()"/><br />
	<input type="text" name="" id="addr1" placeholder="도로명 주소" size="50" /><br />
	<input type="text" name="" id="addr2" placeholder="지번주소" size="50"/><br />


</body>
</html>