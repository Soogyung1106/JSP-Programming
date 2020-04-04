<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		var regExpPswd = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;	
		//적어도 숫자 1개, 특수문자 1개, 영문자1개 이상씩 써서 8자리 이상으로 구성
		
		
		if(form.id.value == ""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return;
		}else if(!regExpPswd.test(form.passwd.value)){
			
				alert("영문+숫자+특수기호 8자리 이상으로 구성하여야합 니다.");
				form.passwd.focus();
				return;			
								
		}
		form.submit();
		
	}
</script>
<body>
	<form name="loginForm" action = "validation8_6_process.jsp" method="post">
		<p>아이디 : <input type = "text" name="id">
		<p>비밀번호 : <input type = "text" name="passwd" >
		<p>비밀번호 확인: <input type = "text" name="passwd2" >
		<p> <input type="button" value="전송" onclick="checkLogin()">
	
	</form>
</body>
</html>