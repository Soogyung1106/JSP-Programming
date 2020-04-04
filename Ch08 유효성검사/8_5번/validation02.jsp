<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head>
<title>Validation</title>
</head>

<script type = "text/javascript">
	function CheckLogin() {
		
		var form = document.loginForm;
		
		var regExpPasswd= /(.){3}/;
		var regExpPasswd2= /([a-zA-Z]){3}|([0-9]){3}/
		
		if(regExpPasswd2.test(form.passwd.value)) {
			alert("영문 또는 숫자는 3자 이상 연속 입력할 수 없습니다.");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
	
	
	
</script>

<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="text" name="passwd">
		<p> 비밀번호 확인 : <input type="text" name="passwd2">
		<p> <input type="button" value="전송" onclick="CheckLogin()">
	</form>
</body>

</html>