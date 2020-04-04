<%@ page pageEncoding="utf-8" %>
<%@ page import = "java.util.Date" %>
<html>
<head>
<title>Directives</title>
</head>

<body>
	<%@ include file = "header.jsp" %>
	<% out.println("현재 시간 : " + Calendar.getInstance().getTime());%>	

</body>
</html>
