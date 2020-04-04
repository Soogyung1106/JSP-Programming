<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.text.NumberFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.*" %>

<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<h3>현재 로케일</h3>
	<%
		Locale locale = request.getLocale();
		Date currentDate = new Date();
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL,locale);
		NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
	%>
	<p> 언어 : <%=locale. getLanguage() %>
	<p> 국가 : <%=locale. getCountry() %>
	
</body>
</html>