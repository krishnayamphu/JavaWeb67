package com.ky.dao;

import com.ky.database.ConnectDB;
import com.ky.models.Todo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TodoDao {
    private static Connection cn;
    public static ArrayList<Todo> getTodoItems() {
        ArrayList<Todo> todoList = new ArrayList<>();
        try {
            cn = ConnectDB.connect();
            String sql = "SELECT * FROM todo";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Todo item = new Todo();
                item.setId(rs.getInt("id"));
                item.setItem(rs.getString("items"));
                item.setStatus(rs.getBoolean("status"));
                todoList.add(item);
            }
            cn.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return todoList;
    }

    public static void addItem(Todo item) {
        try {
            cn = ConnectDB.connect();
            String sql = "INSERT INTO todo VALUES(null,?,?)";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, item.getItem());
            ps.setBoolean(2, item.isStatus());
            ps.executeUpdate();
            cn.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public static void removeItem(int id) {
        try {
            cn = ConnectDB.connect();
            String sql = "DELETE FROM todo WHERE id=?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            cn.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}
