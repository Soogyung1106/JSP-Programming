<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>session_out</title>
</head>
<body>
	<%
		//설정된 모든 세션명을 해제 		
		session.removeAttribute("userID");
		session.removeAttribute("userPW");
		
		response.sendRedirect("session.jsp");
	%>
</body>
</html>