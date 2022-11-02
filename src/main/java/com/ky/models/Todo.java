package com.ky.models;

public class Todo {
    private int id;
    private String item;
    private boolean status;

    public Todo() {
    }

    public Todo(String item, boolean status) {
        this.item = item;
        this.status = status;
    }

    public Todo(int id, String item, boolean status) {
        this.id = id;
        this.item = item;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
