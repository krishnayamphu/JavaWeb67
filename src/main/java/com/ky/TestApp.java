package com.ky;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;

public class TestApp {
    public static void main(String[] args) {
        Todo item=new Todo(1,"Visit doctor",false);
        TodoDao.addItem(item);
    }
}
