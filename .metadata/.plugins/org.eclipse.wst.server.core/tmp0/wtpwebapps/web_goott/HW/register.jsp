<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>아마존 회원가입</title>
    <style media="screen">
      #amazon {
        color : black;
        text-align: center;

      }
      #myDiv {
        width : 270px;
        height : 560px;
        border : 1px solid #ddd;
        padding: 20px 20px 20px 20px;
        margin : 0 auto;
        border-radius:10px;
      }

      p{
        font-size : 27px;
      }
      #bt {
        width : 260px;
        height : 30px;
        background-color : #f0c14b;
        border-radius:5px;
      }
      input {
        border-radius:4px;
        width : 260px;
        height : 20px;
        border: 1px solid #A6A6A6;
      }


    </style>
    <script type="text/javascript">
		function checkForm(x) {

			var name = x.form[0].value;
			var email = x.form[1].value;
			var pw = x.form[2].value;
			var pwch = x.form[3].value;

			console.log("name : " + name);
			console.log("email : " + email);
			console.log("password : " + pw);
			console.log("passwordcheck : " + pwch);

			if(name =="") {
				alert("이름을 입력하세요.");
				// 경고창 확인 후 아이디 텍스트 창으로 포커스 추가
				x.form[0].focus();

				return;			// 값을 반환하고 중지해!
			}else if(email == "") {
				alert("이메일 입력하세요.");
				x.form[1].focus();

				return;
			}else if(pw == "") {
				alert("비밀번호를 입력하세요.");
				x.form[2].focus();

				return;
			}else if(pwch == "") {
				alert("비밀번호를 확인하세요");
				x.form[3].focus();

				return;
			}else if(pw !=pwch) {
				alert("같은 패스워드가 아닙니다.");
				x.form[2].value = "";
				x.form[3].value = "";
				x.form[2].focus();

				return;
			}else if(pw.length < 6) {
				alert("비밀번호는 6자 이상이어야 합니다.");
				x.form[2].value = "";
				x.form[2].focus();
				
				return;
			}
			// 데이터를 다른 페이지로 이동
			// if문 추가해서 사용자가 입력한 값에 따라 서로 다른 주소로 보낼 수도 있음

			x.form.action = "registerOk.jsp";

			// wjsekfqkdtlreh tjsxor rksmd
			x.form.method = "post";
			
			// 전송하기
			x.form.submit();




		}
	</script>
  </head>
  <body>
  	<form action="#">
    <a href="#" id = "amazon">
      <h2>amazon</h2>
    </a>

    <div id="myDiv">
      <p>계정 만들기</p>

     	 당신의 이름 <br>
      <input type="text" name = "name" id = "name">  <br><br>
    	  이메일 <br>
      <input type="text" name = "email" id = "email" > <br><br>
    	  암호 <br>
      <input type="text" name = "pw" id ="pw"> <br>
      ! 비밀번호는 6자 이상이어야 합니다. <br> <br>
     	 비밀번호를 다시 입력하세요
      <input type="text" name = "pwck" id = "pwck"> <br><br>
      <input type="button" value = "아마존 계정 만들기" id = "bt" onclick="checkForm(this)">
      
      <br> <br>
   	  	 계정을 만들면 Amazon의 
   	  	 <a href="https://www.amazon.com/gp/help/customer/display.html/ref=ap_register_notification_condition_of_use?ie=UTF8&nodeId=508088">
   	  	 	사용조건
   	  	 </a> 및 
   	  	 <a href="https://www.amazon.com/gp/help/customer/display.html/ref=ap_register_notification_privacy_notice?ie=UTF8&nodeId=468496">
   	  	 개인 정보 보호 정책에
   	  	 </a> 
   	  	 동의하게 됩니다.
      <br><br><br><hr>

     	 이미 계정이 있습니까? 
     	 <a href="https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_signin&prevRID=ZJ62XFWZGGRXVVK7QSG6&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=usflex&ignoreAuthState=1&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0">로그인</a>

    </div>
    </form>
  </body>
</html>
