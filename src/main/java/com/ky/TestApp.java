package com.ky;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;

import java.util.ArrayList;

public class TestApp {
    public static void main(String[] args) {
        ArrayList<Todo> items=new ArrayList<>();
        items=TodoDao.getTodoItems();
        for(Todo item:items){
            System.out.println(item.getItem());
        }
    }
}
