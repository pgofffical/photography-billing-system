package com.demo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {

    private static final String IMAGE_DIR = "C:/PhotographyUploads/events/";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String imageName = request.getParameter("name");

        if (imageName == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }

        File imageFile = new File(IMAGE_DIR + imageName);

        if (!imageFile.exists()) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        response.setContentType("image/jpeg");
        response.setContentLength((int) imageFile.length());

        FileInputStream fis = new FileInputStream(imageFile);
        fis.transferTo(response.getOutputStream());
        fis.close();
    }
}
