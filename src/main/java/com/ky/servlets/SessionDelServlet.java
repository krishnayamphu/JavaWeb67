package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SessionDelServlet", value = "/session-del")
public class SessionDelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.invalidate();
        PrintWriter pw=response.getWriter();
        pw.print("Session deleted successfully.");
    }
}
