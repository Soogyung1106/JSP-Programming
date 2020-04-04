<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Locale" %>
<%
	Locale locale = request.getLocale(); // Locale 클래스 생성
	String language = locale.getLanguage();
	String country = locale.getDefault().getCountry();

%>

<html>
<head>
<title>Localization</title>
</head>
<body>
	<h4>현재 로케일</h4>
	
	<%
		out.println("언어 : "+language + "<br />");
		out.println("국가 : "+country+ "<br />");
		//out.println("국가 : "+locale.getDefaultCountry()+ "<br />");
	%>
</body>
</html>