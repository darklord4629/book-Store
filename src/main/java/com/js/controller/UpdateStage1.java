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

@WebServlet (value="/update1")
public class UpdateStage1 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		BookCRUD bc=new BookCRUD();
		Book b=bc.getBookByID(id);
		if(b==null) {
			req.setAttribute("msg", "No Book With This ID BITCH!!");
			req.getRequestDispatcher("result.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("book", b);
			req.getRequestDispatcher("update.jsp").forward(req, resp);
		}
	
	}
}
