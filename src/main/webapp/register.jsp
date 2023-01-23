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
    <h1>Enter Book Details:</h1>
	<form action="insert">
		<table>
			<tr>
				<td>
					<label for="id">Book ID:</label>
				</td>
				<td>
					<input type="number" name="book_id" id=id>
				</td>
			</tr>
			<tr>
				<td>
					<label for="bname">Book Name:</label>
				</td>
				<td>
					<input type="text" name="book_name" id=bname>
				</td>
			</tr>
			<tr>
				<td>
					<label for="aname">Author Name:</label>
				</td>
				<td>
					<input type="text" name="author_name" id=aname>
				</td>
			</tr>
			<tr>
				<td>
					<label for="nop">No of Pages:</label>
				</td>
				<td>
					<input type="number" name="no_of_pages" id=nop>
				</td>
			</tr>
			<tr>
				<td>
					<label for="price">Price:</label>
				</td>
				<td>
					<input type="number" name="price" id=price>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Save" id="submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>