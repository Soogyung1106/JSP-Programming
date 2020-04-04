<!-- 신규 상품 등록 처리 페이지 만들기 -->
<%@ page contentType="test/html; charset=utf-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<%
	request.setCharacterEncoding("UTF-8");

	String bookId = request.getParameter("bookId");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String unitPrice = request.getParameter("unitPrice");
	String totalPages= request.getParameter("totalPages");
	String releaseDate = request.getParameter("releaseDate");
	String description = request.getParameter("description");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	else
		price=Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock=0;
	else
		stock=Long.valueOf(unitsInStock);
	
	long pages;
	
	if(totalPages.isEmpty())
		pages=0;
	else
		pages=Long.valueOf(totalPages);

	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setAuthor(author);
	newBook.setUnitPrice(price);
	newBook.setTotalPages(pages);
	newBook.setReleaseDate(releaseDate);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);

	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
%>
