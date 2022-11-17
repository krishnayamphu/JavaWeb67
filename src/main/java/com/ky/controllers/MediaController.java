package com.ky.controllers;

import com.ky.utility.MediaFile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "MediaController", value = "/media")
public class MediaController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String root=getServletContext().getRealPath("/uploads");
        ArrayList<String> files= MediaFile.getFiles(root);
        request.setAttribute("files",files);
        request.getRequestDispatcher("media.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String root=getServletContext().getRealPath("/uploads");
        String name=request.getParameter("pic");
        MediaFile.delete(root,name);
        response.sendRedirect("media");
    }
}
