<%@page contentType ="text/html; charset=utf-8"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		try{
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			if(id==""||password==""){
				throw new Exception();
			} 
			
		} catch(Exception e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("exception_error.jsp");
			dispatcher.forward(request,response);
		}
	%>
</body>
</html>