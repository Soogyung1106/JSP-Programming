<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Calendar"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		response.setHeader("Refresh", "5");
		Calendar cal = Calendar.getInstance();
    	String am_pm;
    	
 
    	int hour = cal.get(Calendar.HOUR);
    	int minute = cal.get(Calendar.MINUTE);
    	int second = cal.get(Calendar.SECOND);
    	if(hour/12 == 0) {
       	am_pm = "AM";
    	} else {
       		am_pm = "PM";
       		hour = hour - 12;
    	}
    	String CT = hour + ":" + minute + ":" + second + " " + am_pm;
    	out.println("현재 시간은 " + CT + "\n");   	
		
	%>
	
	<p> <a href="./response_data.jsp?" class="btn btn-secondary" role="button">Google 홈페이지로 이동하기 &raquo;</a>

	
</body>


</html>