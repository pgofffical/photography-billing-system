package com.demo.controller;

import java.io.IOException;

import org.bson.types.ObjectId;

import com.demo.dao.InvoiceDAO;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/makePayment")
public class MakePaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String invoiceId = req.getParameter("invoiceId");
        String method = req.getParameter("method");

        InvoiceDAO dao = new InvoiceDAO();
        dao.markAsPaid(invoiceId, method);

        res.sendRedirect(req.getContextPath() + "/ViewInvoiceServlet");
    }
}
