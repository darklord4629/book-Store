<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	body{
		color: red;
	}
	
</style>
<body>
	<h1>List Of All Books</h1>
	<table border="4px" bordercolor="blue">
		<tr>
			<th>Si NO</th>
			<th>Book Name</th>
			<th>Author Name</th>
			<th>Number of Pages</th>
			<th>Price</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		
		<%ArrayList <Book> books= (ArrayList)request.getAttribute("allbooks"); 
		for(Book b: books){
		%>
		<tr>
			<td><%=b.getBook_id() %></td>
			<td><%=b.getBook_name() %></td>
			<td><%=b.getAuthor_name() %></td>
			<td><%=b.getNo_of_pages() %></td>
			<td><%=b.getPrice() %></td>
			<td><a href="delete?id=<%=b.getBook_id()%>">DELETE</a>
			<td><a href="update1?id=<%=b.getBook_id()%>">Edit</a>
		</tr>
		
		<%} %>
	</table>
		
		<h2><a href="welcome.html">Home</a></h2>
		
		
	</table>
</body>
</html>