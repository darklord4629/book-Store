package com.js.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.BookCRUD;
import com.js.dto.Book;
@WebServlet (value="/update2")
public class UpdateStage2 extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Book b=new Book();
			b.setBook_id(Integer.parseInt(req.getParameter("book_id")));
			b.setBook_name(req.getParameter("book_name"));
			b.setAuthor_name(req.getParameter("author_name"));
			b.setNo_of_pages(Integer.parseInt(req.getParameter("no_of_pages")));
			b.setPrice(Double.parseDouble(req.getParameter("price")));
			
			BookCRUD bc=new BookCRUD();
			if(bc.updateBookByID(b.getBook_id(), b)>0) {
				req.getRequestDispatcher("viewallbooks").forward(req, resp);
			}
			else {
				req.setAttribute("msg", "Failed to Update");
				req.getRequestDispatcher("result.jsp").forward(req, resp);
			}
		
		}
}
