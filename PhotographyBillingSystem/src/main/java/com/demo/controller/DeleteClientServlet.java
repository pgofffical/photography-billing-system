package com.demo.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.demo.dao.ClientDAO;

@WebServlet("/deleteClient")
public class DeleteClientServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String id = request.getParameter("id");

        ClientDAO dao = new ClientDAO();
        dao.deleteClient(id);

        // ✅ redirect to correct servlet
        response.sendRedirect(request.getContextPath() + "/viewClient");
    }
}

