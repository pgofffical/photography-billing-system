package com.demo.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if(email.equals("admin@gmail.com") && password.equals("admin123")) {
            req.getSession().setAttribute("admin", email);
            res.sendRedirect("admin/adminDashboard.jsp");
        } else {
            res.sendRedirect("error.jsp");
        }
    }
}

