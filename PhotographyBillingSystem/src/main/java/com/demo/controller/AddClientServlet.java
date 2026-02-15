package com.demo.controller;

import java.io.IOException;

import org.bson.Document;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.demo.dao.ClientDAO;

@WebServlet("/addClient")
public class AddClientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Document doc = new Document("name", req.getParameter("name"))
                .append("phone", req.getParameter("phone"))
                .append("email", req.getParameter("email"))
                .append("eventType", req.getParameter("eventType"));

        new ClientDAO().addClient(doc);

        res.sendRedirect(req.getContextPath() + "/viewClient");
    }
}


