package com.demo.controller;

import java.io.IOException;
import org.bson.Document;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.demo.dao.ServiceDAO;

@WebServlet("/addService")
public class AddServiceServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String serviceName = request.getParameter("serviceName");
        double price = Double.parseDouble(request.getParameter("price"));

        Document doc = new Document("serviceName", serviceName)
                .append("price", price);

        ServiceDAO dao = new ServiceDAO();
        dao.addService(doc);

        response.sendRedirect("admin/addService.jsp");
    }
}
