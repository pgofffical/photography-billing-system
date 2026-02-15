package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/UploadImageServlet")
@MultipartConfig
public class UploadImageServlet extends HttpServlet {

    private static final String UPLOAD_DIR = "C:/PhotographyUploads/events";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        File uploadDir = new File(UPLOAD_DIR);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        filePart.write(UPLOAD_DIR + File.separator + fileName);

        response.sendRedirect(request.getContextPath() + "/admin/eventsGallery.jsp");
    }
}
