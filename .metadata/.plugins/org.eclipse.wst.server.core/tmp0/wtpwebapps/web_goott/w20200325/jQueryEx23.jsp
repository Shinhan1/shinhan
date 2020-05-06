<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryEx23.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.innerfade.js">   </script>
<script type="text/javascript">
   $(function(){
      $('input').click(function(){
         //ajax
         $.ajax({
            // 서버에 요청할 자원 주소
            url : 'serverEx.jsp' ,
            
            //type
            dataType : 'text' ,
            
            //성공 했다면, 
            success : function(data){      //성공햇다면 매게변수 data
               alert("성공" + "전달받은 데이터 = " +data);
                  //data = "account, sales, operations"
                  //.를 기준으로 단어를 구분하여 li tag로 감싼 다음, ul에 append
                  dataArray = data.trim().split(',');
                  
                  console.log(dataArray);
                  for(var i=0; i<dataArray.length; i++){
                     var str = dataArray[i];
                     
                     var txt = "<li>" + str + "</li>" ;
                     
                     $('ul').append(txt);
                  }
                  
               
            }
         
            
         }); // ajax end
      }); //click end
   }); // jquery end

</script>
</head>
<body>
   <h2>부서목록</h2>
   <input type="button" value="출력" />
   <div>
      <ul>
         <li>부서정보</li>
      </ul>
   </div>
</body>
</html>