package com.ky.controllers;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TodoEditController", value = "/todo-edit")
public class TodoEditController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        boolean status= Boolean.parseBoolean(request.getParameter("status"));

        Todo item=new Todo();
        item.setId(id);
        item.setStatus(status);
        TodoDao.updateStatus(item);
        PrintWriter pw=response.getWriter();
        pw.print(id);
        pw.print(status);
    }
}
