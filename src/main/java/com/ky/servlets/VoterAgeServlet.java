package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "VoterAgeServlet", value = "/voter-age")
public class VoterAgeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        int age=Integer.parseInt(request.getParameter("age"));

        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.print("Voter's Name: "+name);
        pw.print("<br>Voter's Age: "+age);
        pw.print("<br>You can vote!");
    }
}
