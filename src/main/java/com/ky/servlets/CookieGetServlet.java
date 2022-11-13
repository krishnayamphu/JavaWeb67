package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CookieGetServlet", value = "/cookie-get")
public class CookieGetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        Cookie[] cookies=request.getCookies();
        for(Cookie cookie:cookies){
        pw.print(cookie.getName()+" = "+cookie.getValue());
        }
    }
}
