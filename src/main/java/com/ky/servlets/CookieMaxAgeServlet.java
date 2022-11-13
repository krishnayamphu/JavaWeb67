package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CookieMaxAgeServlet", value = "/cookie-create")
public class CookieMaxAgeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie ck=new Cookie("cname","Aptech");
        ck.setMaxAge(60*60);
        response.addCookie(ck);
        response.getWriter().print("Cookie time set successfully.");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
