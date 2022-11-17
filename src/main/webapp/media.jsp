<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial;
        }
        body{
            padding: 15px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
        }

        .container img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin: 5px;
        }

        img:hover {
            opacity: 0.8;
        }
        .upload-form{
            padding: 15px;
        }
        .upload-form button{
            padding: 2px 5px;
            border: none;
            background-color: #245fce;
            color: white;
            border-radius: 2px;
        }

        .img-wraper {
            padding: 5px;
        }

        .img-action {
            display: flex;
            justify-content: center;
        }

        .img-action a {
            padding: 3px 5px;
            background-color: #245fce;
            color: white;
            text-decoration: none;
        }

        .img-action button {
            background-color: #de4c4c;
            padding: 5px;
            border: none;
            color: white;
            margin-left: 2px;
        }

        hr{
            margin:15px 0;
        }
    </style>
</head>

<body>
<form class="upload-form" action="upload" method="post" enctype="multipart/form-data">
    <label>File to upload</label>
    <input type="file" name="upload">
    <button type="submit">Upload</button>
</form>

<hr>

<h4>All Media Files</h4>

<div class="container">

    <%
        ArrayList<String> files = (ArrayList<String>) request.getAttribute("files");
        if (files.isEmpty()) {
            out.print("No file items found");
        } else {
            for (String item : files) {

    %>
    <div class="img-wraper">
        <img src="uploads/<%= item %>" alt="">
        <div class="img-action">
            <a href="">View</a>
            <form action="media" method="post">
                <input type="hidden" name="pic" value="<%= item %>">
                <button>Delete</button>
            </form>
        </div>

    </div>

    <%
            }
        }
    %>
</div>

</body>
</html>
