<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
        }
        .container img{
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin: 5px;
        }
        img:hover{
            opacity: 0.8;
        }
        .img-wraper{
            padding: 5px;
        }
        .img-action{
            display: flex;
            justify-content: center;
        }

        .img-action a{
            padding: 3px 5px;
            background-color: #245fce;
            color: white;
            text-decoration: none;
        }
        .img-action button{
            background-color: #de4c4c;
            padding:5px;
            border: none;
            color: white;
            margin-left: 2px;
        }
    </style>
</head>

<body>
<div class="container">
    <%
        ArrayList<String> files= (ArrayList<String>) request.getAttribute("files");
        for(String item:files){

    %>
    <div class="img-wraper">
        <img src="uploads/<%= item %>" alt="">
        <div class="img-action">
            <a href="">View</a>
            <form action="">
                <button>Delete</button>
            </form>
        </div>

    </div>

    <%
        }
    %>
</div>

</body>
</html>
