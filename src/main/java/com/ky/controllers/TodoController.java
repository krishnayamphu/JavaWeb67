package com.ky.controllers;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TodoController", value = "/todo")
public class TodoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("todo/index.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();

        String item=request.getParameter("todo_item");
        Todo todo=new Todo(item,false);
        TodoDao.addItem(todo);
        response.sendRedirect("todo");
    }
}
