package com.demo.controller;

import java.io.IOException;

import com.demo.dao.InvoiceDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewInvoice")
public class ViewInvoiceServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        req.setAttribute("invoices", new InvoiceDAO().getAllInvoices());
        req.getRequestDispatcher("admin/viewInvoice.jsp").forward(req, res);
    }
}

