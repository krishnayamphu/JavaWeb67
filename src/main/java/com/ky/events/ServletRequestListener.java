package com.ky.events;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
@WebListener
@WebServlet(name = "ServletRequestListener", value = "/servlet-request")
public class ServletRequestListener extends HttpServlet implements javax.servlet.ServletRequestListener {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().print("Testing ServletRequestListener");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("request destroyed success");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("request made success");
    }
}
