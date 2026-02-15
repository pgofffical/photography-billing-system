package com.demo.controller;

import java.io.IOException;
import java.util.List;
import org.bson.Document;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.demo.dao.ClientDAO;

@WebServlet("/viewClient")
public class ViewClientServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ClientDAO dao = new ClientDAO();
        List<Document> list = dao.getAllClients();

        req.setAttribute("clients", list);

        req.getRequestDispatcher("/admin/viewClient.jsp")
           .forward(req, res);
    }
}
