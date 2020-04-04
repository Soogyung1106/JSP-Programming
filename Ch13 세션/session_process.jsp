<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>session_process</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin")&& user_pw.equals("admin1234")){
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			response.sendRedirect("welcome.jsp"); 
		}else {
			response.sendRedirect("session_out.jsp"); //이동 -> 모든 세션명을 해제, session.jsp 파일로 이동 
		}
		
		
	%>

</body>
</html>