<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ky.models.Todo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Application</title>
    <style>
        * {
            font-family: arial;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            color: #333;
        }

        section {
            background-color: aquamarine;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        h3 {
            padding-bottom: 15px;
        }

        form .input-group {
            background-color: aliceblue;
            padding: 5px;
            border-radius: 30px;
            margin-bottom: 30px;
        }

        form input[type='text'] {
            border-radius: 30px 0 0 30px;
            border: none;
            padding: 5px 15px;
            margin: 0;
        }

        form .btn-submit {
            border-radius: 0 30px 30px 0;
            background-color: aqua;
            color: white;
            margin: 0;
            border: none;
            padding: 5px 15px;
        }

        form button {
            border: none;
            padding: 3px 10px;
            border-radius: 2px;
            background-color: #de4c4c;
            color: white;
        }

        ul {
            list-style: none;
        }

        ul li {
            display: flex;
            padding: 8px 0px;
            border-bottom: 1px solid #ffffff;
            align-items: center;
        }

        ul li:last-child {
            border-bottom: none;
        }

        ul li span {
            display: inline-block;
            margin: 0 10px;
        }

    </style>
</head>
<body>
<section>
    <h3>Todo List</h3>
    <form action="todo" method="post">
        <div class="input-group">
            <input type="text" placeholder="Add Item" name="todo_item">
            <button class="btn-submit" type="submit">Add</button>
        </div>
    </form>
    <ul>
        <c:forEach var="item" items="${items}">
            <li>
                <input type="checkbox" id="ckb${item.id}"
                       onchange="validate(${item.id})" ${item.status?"checked" : ""}>
                <span id="lblitem${item.id}" ${item.status?"style='text-decoration:line-through'" : ""}>
                        ${item.item}
                </span>
                <form action="todo-del" method="post">
                    <input type="hidden" value="${item.id}" name="id">
                    <button> X </button>
                </form>
            </li>
        </c:forEach>
    </ul>
</section>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script>

    function validate(id) {
        let name = 'ckb' + id;
        let lblname = 'lblitem' + id;
        if (document.getElementById(name).checked) {
            console.log("checked");
            mydata = "id=" + id + "&status=true";
            postData(mydata)
            document.getElementById(lblname).style.textDecoration = 'line-through'
        } else {
            console.log("un checked");
            mydata = "id=" + id + "&status=false";
            postData(mydata)
            document.getElementById(lblname).style.textDecoration = 'none'
        }
    }

    function postData(mydata) {
        $.ajax({
            url: "todo-edit",
            type: 'POST',
            data: mydata,
            success: function (data) {
                console.log(data)
            },
        })
    }
</script>

</body>
</html>
