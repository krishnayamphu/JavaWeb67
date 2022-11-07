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
    <li>
        <input type="checkbox" id="ckb<%= item.getId() %>" onclick="validate(<%= item.getId() %>)" <%= item.isStatus()?"checked":"" %>>
        <span id="lblitem<%= item.getId() %>"  <%= item.isStatus()?"style='text-decoration:line-through'":"" %> >
            <%= item.getItem() %>
        </span>
        <form action="todo-del" method="post">
            <input type="hidden" value="<%= item.getId() %>" name="id">
            <button>Remove</button>
        </form>
    </li>
    <%
        }
    %>
</ul>

<script>
    function test(){
        console.log("hi");
    }
    function validate(id) {
        let name='ckb'+id;
        let lblname='lblitem'+id;
        if (document.getElementById(name).checked) {
            console.log("checked");
            document.getElementById(lblname).style.textDecoration='line-through'
        } else {
            console.log("un checked");
            document.getElementById(lblname).style.textDecoration='none'
        }
    }

console.log("its working")

</script>

</body>
</html>
