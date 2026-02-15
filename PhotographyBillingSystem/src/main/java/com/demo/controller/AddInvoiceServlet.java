package com.demo.controller;

import java.io.IOException;

import org.bson.Document;

import com.demo.dao.InvoiceDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addInvoice")
public class AddInvoiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        double amount = Double.parseDouble(req.getParameter("amount"));

        Document doc = new Document("clientId", req.getParameter("clientId"))
                .append("service", req.getParameter("service"))
                .append("amount", amount)
                .append("billDate", req.getParameter("billDate"));

        new InvoiceDAO().addInvoice(doc);
        res.sendRedirect("admin/viewInvoice.jsp");
    }
}

