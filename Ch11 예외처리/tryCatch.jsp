<%@ page contentType = "text/html; charset=utf-8"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		try{
			int num=10/0;
		} catch(Exception e){
			out.println("오류발생 : "+e.getMessage());
			}
	%>
</body>
</html>


<!--임이ㅡ의 숫자를 0으로 나누면 오류가 발생하도록 작성합니다.
발생된 오류에 대한 메세지를 출력합니다. -->