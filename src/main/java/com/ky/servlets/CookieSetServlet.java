package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CookieSetServlet", value = "/cookie-set")
public class CookieSetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Cookie ck=new Cookie("user","Admin");
    response.addCookie(ck);
    response.getWriter().print("Cookie created successfully.");
    }
}
