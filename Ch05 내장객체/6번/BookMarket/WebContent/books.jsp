
<%@ page pageEncoding = "utf-8" %>
<%@ page import= "java.util.ArrayList" %>
<%@ page import= "dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"></jsp:useBean>

<html>
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>

<body>
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron">
		<div class="container">
			<h1 class = "display-3">도서 목록</h1>
		</div>
	</div>
	<%
		ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	
	<div class="container">
		
				<%
					for(int i=0 ; i<listOfBooks.size();i++){
								Book book = listOfBooks.get(i);
				%>
				
			<div class="container">	
				<div class= "align" align="left">
					<h5><b><%=book.getName() %>></b></h5>
					<p><%= book.getDescription() %>
					<p><%= book.getAuthor() %>
					<% out.println(" | ");  %>
					 <%= book.getPublisher() %>
					<% out.println(" | ");  %>
					 <%= book.getUnitPrice() %>원
					 <p> <a href="./book.jsp?id=<%=book.getbookId() %>"
					class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
					  
					</p> 
					<hr>
				</div>
			</div>
				<%
						}
				%>
		
			
		
	</div>

	<jsp:include page="footer.jsp" />
	
</body>
</html>