<%@page import="com.js.dto.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body{
            background-color: rgba(91, 180, 180, 0.562);
        }
        table{
            height: 300px;
            
        }
        input{
            /* background-color: aqua; */
            background-color: rgba(0, 0, 0, 0);
            border: none;
            text-align: center;
            outline: none;
            border-bottom: 2px solid rgb(11, 37, 180);
        }
        #submit{
        	cursor:pointer;
            margin-left: 75px;
            border: none;
            border: 2px solid tomato;
            border-radius: 25px;
            width: 100px;
            height: 50px;
        }
        #submit:hover{
            border: none;
            box-shadow: 0 0 20px 20px red;
            background-color: red;
            color: red;
        }
    </style>
</head>
<body>
    <h1>Enter Details to Update:</h1>
    <%Book b=(Book)request.getAttribute("book"); %>
	<form action="update2">
		<table>
			<tr>
				<td>
					<label for="id">Book ID:</label>
				</td>
				<td>
					<input type="number" name="book_id" id=id value="<%=b.getBook_id()%>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					<label for="bname">Book Name:</label>
				</td>
				<td>
					<input type="text" name="book_name" id=bname value="<%=b.getBook_name()%>">
				</td>
			</tr>
			<tr>
				<td>
					<label for="aname">Author Name:</label>
				</td>
				<td>
					<input type="text" name="author_name" id=aname value="<%=b.getAuthor_name() %>">
				</td>
			</tr>
			<tr>
				<td>
					<label for="nop">No of Pages:</label>
				</td>
				<td>
					<input type="number" name="no_of_pages" id=nop value="<%=b.getNo_of_pages()%>">
				</td>
			</tr>
			<tr>
				<td>
					<label for="price">Price:</label>
				</td>
				<td>
					<input type="number" name="price" id=price value="<%=b.getPrice()%>">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Update" id="submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>