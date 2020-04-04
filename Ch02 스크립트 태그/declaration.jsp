<html>
<head>
<title>Scripting Tag</title>
</head>

<body>
	<%! String data = "Hello, Java Server Pages"; 
		String getString(String x){
			return x;	
		}
	%>
	<%
		String x= getString(data);
		out.println(x);
	%>
</body>

</body>


</html>