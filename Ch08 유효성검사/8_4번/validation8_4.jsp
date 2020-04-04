<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value == ""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus();
			return;
		}else if(form.passwd.value.search(form.id.value)>-1){
			
				alert("비밀번호는 ID를 포함할 수 없습니다.");
				form.passwd.focus();
				return;						
		}
		form.submit();
		
	}
</script>
<body>
	<form name="loginForm" action = "validation8_4_process.jsp" method="post">
		<p>아이디 : <input type = "text" name="id">
		<p>비밀번호 : <input type = "text" name="passwd" >
		<p> <input type="button" value="전송" onclick="checkLogin()">
	
	</form>
</body>
</html>