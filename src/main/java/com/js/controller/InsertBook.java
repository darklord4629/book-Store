package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.BookCRUD;
import com.js.dto.Book;
@WebServlet (value="/insert")
public class InsertBook extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Book b=new Book();
		b.setBook_id(Integer.parseInt(req.getParameter("book_id")));
		b.setBook_name(req.getParameter("book_name"));
		b.setAuthor_name(req.getParameter("author_name"));
		b.setNo_of_pages(Integer.parseInt(req.getParameter("no_of_pages")));
		b.setPrice(Double.parseDouble(req.getParameter("price")));

		BookCRUD bc=new BookCRUD();
		
		if(bc.insertBook(b)>0) {
			RequestDispatcher rd =req.getRequestDispatcher("result.jsp");
			req.setAttribute("msg", "Registered Successfully Dude!!!");
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher rd =req.getRequestDispatcher("result.jsp");
			req.setAttribute("msg", "Failed to Register");
			rd.forward(req, resp);
			
		}
		
	}

}
