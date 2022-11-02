<%@ page import="com.ky.models.Todo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Application</title>
</head>
<body>
<h3>Todo List</h3>
<form action="todo" method="post">
    <div class="input-group">
        <input type="text" placeholder="Add Item" name="todo_item">
        <button type="submit">Add</button>
    </div>
</form>
<ul>
    <%
        ArrayList<Todo> items= (ArrayList<Todo>) request.getAttribute("items");
        for(Todo item:items){
    %>
    <li><input type="checkbox"><%= item.getItem() %> <button>Remove</button></li>
    <%
        }
    %>
</ul>

</body>
</html>
