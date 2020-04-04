<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	
	<script>
	function logout(){
		<%session.invalidate();%>
	}
	</script>
	
	<%
		Cookie cookies[] = request.getCookies();
		
		if(cookies[0].getValue()==null){
			response.sendRedirect("cookie_out.jsp");
		}
		
		String user =cookies[0].getValue();
	%>
	<p><b><%=user %>님 반갑습니다.</b>
	<p>
	<p><a href='javascript:void(0);' onclick="logout();">로그아웃</a>
	
	
	
	 
	

</body>
</html>