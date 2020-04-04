<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>welcome</title>
</head>
<body>
	<%
	//이동 -> 인사말, 로그아웃 버튼 -> 설정된 세션 해제		
		String userid = (String)session.getAttribute("userID");
		out.println(userid+"님 반갑습니다.");
	%>
	<form action="session_out.jsp" method="POST">
		<p><input type="submit" value="로그아웃">
	</form>
		
	
</body>
</html>