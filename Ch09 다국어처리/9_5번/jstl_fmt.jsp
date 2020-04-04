<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.text.NumberFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${param.lang}" />
<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
<fmt:message key="id" var="userMsg1" bundle="${resourceBundle}" />
<fmt:message key="password" var="userMsg2" bundle="${resourceBundle}" />
<fmt:message key="button" var="userMsg3" bundle="${resourceBundle}" />

<html>
<head>
<title>Internationalization</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		alert('${userMsg1}' + " : " + document.loginForm.id.value + "\n" + 
				'${userMsg2}' + " : " + document.loginForm.passwd.value);
	}
</script>
<body>	
 	<a href="?lang=kr"><fmt:message key="Korean " /></a>
	<a href="?lang=en"><fmt:message key=" English" /></a>
	<p>
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
		<form name="loginForm" action="#" method="post">
			<p>${userMsg1} : <input type="text" name="id">
			<p>${userMsg2} : <input type="password" name="passwd">
			<p><input type="submit" value=${userMsg3} onclick="CheckForm()">
	</form>
</body>
</html>