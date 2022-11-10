package com.ky;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;

import java.util.ArrayList;

public class TestApp {
    public static void main(String[] args) {
        int id= 1;
        boolean status= false;

        Todo item=new Todo();
        item.setId(id);
        item.setStatus(status);
        TodoDao.updateStatus(item);

    }
}
