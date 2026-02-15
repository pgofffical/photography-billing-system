package com.demo.controller;

import java.io.IOException;

import org.bson.Document;

import com.demo.dao.ClientDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editClient")
	public class EditClientServlet extends HttpServlet {
	    protected void doPost(HttpServletRequest req, HttpServletResponse res)
	            throws ServletException, IOException {

	        String id = req.getParameter("id");

	        Document update = new Document("$set",
	                new Document("name", req.getParameter("name"))
	                .append("phone", req.getParameter("phone"))
	                .append("email", req.getParameter("email"))
	                .append("eventType", req.getParameter("eventType")));

	        new ClientDAO().updateClient(id, update);
	        res.sendRedirect("admin/viewClient.jsp");
	    }
	


}
