package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SessionSetServlet", value = "/session-set")
public class SessionSetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.setAttribute("appname","Java Web Application");
        PrintWriter pw=response.getWriter();
        pw.print("Session appname set successfully.");
    }
}
