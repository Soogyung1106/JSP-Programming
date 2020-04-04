<html>

<head>
	<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>Welcome</title>		
</head>

<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<a class = "navbar-brand" href= "./welcome.jsp"> Home</a>
		
		</div>
	</nav>

	<%! String greeting = "Book Market Mall";
	String tagline = "Welcome to Book Market!"; %>
	<div class = "jumpbutton">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		
		</div>
	</div>
	
	<main role = "main">
	<div class = "container">
		<div class = "text-center">
			<h3> 
				<%= tagline %>
			</h3>
		
		</div>
		
		<hr>	
	</div>
	</main>
	
	


</body>

</html>