package com.demo.controller;

import java.io.IOException;
import org.bson.Document;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.demo.dao.ClientDAO;

@WebServlet("/bookEvent")
public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String eventType = req.getParameter("eventType");

        Document doc = new Document("name", name)
                .append("phone", phone)
                .append("email", email)
                .append("eventType", eventType)
                .append("status", "Booked");

        new ClientDAO().addClient(doc);

        req.setAttribute("msg", "✅ Your booking has been submitted successfully!");
        req.getRequestDispatcher("/bookingSuccess.jsp").forward(req, res);
    }
}
