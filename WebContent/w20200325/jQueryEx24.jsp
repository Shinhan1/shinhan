<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryEx24.jsp || serverEx.xml</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.innerfade.js">   </script>
<script type="text/javascript">
   $(function(){
      $('input').click(getData);
      
      function getData(){
         //ajax 
         $.ajax({
            
            //서버에 요청할 자원
            url : 'serverEx.xml',
            //파일 타입
            dataType : 'xml' , 
            //전송 방식
            type : 'GET' ,
            //수행전
            beforeSend : function(){
               //필요한 기능 호출
               alert("url 접근 전");
            },
            
         //성공하면~
            success : function(data){
               
               //넘겨받은 데이터(data)에서 book이라는 요소를 검색하고, 그 요소를 각각 처리
               $(data).find('book').each(function(){
            	   //찾은 book요소에서 title, price 요소를 검색하고 그 데이터를 추출
            	   var title = $(this).find('title').text();
            	   var price = $(this).find('price').text();
            	   
            	   //화면에 html형식으로 출력 하기위한 조작
            	   var txt = "<li>" + title + " : " + price + "</li>";
            	   
            	   //ul 안쪽에 추가
            	   $('ul').append(txt);
            	   
            	});
            },
            
         //성공 못하면~
            error : function(){
               alert("에러 발생시 호출");
            },
            
         //ajax사용이 끝나면~
            complete : function(){
               //필요한 기능 수행
               alert("동작완료 후 수행");
            }
            
         });//ajax end
      }//getData( end)
   });
</script>
</head>
<body>
   <h1>gott 도서관</h1>
   <input type="button" value="도서목록"/>
   <div>
      <h2>도서 목록</h2>
      <div>
         <ul>
            <li>
               <h3>구비목록</h3>
            </li>
         </ul>
      </div>
   </div>
   


</body>
</html>