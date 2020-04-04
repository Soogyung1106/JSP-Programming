<%@page contentType="text/html; charset=utf-8"%>
<%@page isErrorPage="true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		int statusCode=response.getStatus();
		response.setStatus(200);
	%>
	<table border = "1">
		<tr>
			<td>Error:</td>
			<td><p><%=exception.getClass().getName()%> 오류발생!!!</td>
		</tr>
		<tr>
			<td>URI:</td>
			<td><p><%=request.getRequestURI()%></td>
		</tr>
		<tr>
			<td>Status code:</td>
			<td><p><%=statusCode%></td>
		</tr>
	</table>
</body>
</html>