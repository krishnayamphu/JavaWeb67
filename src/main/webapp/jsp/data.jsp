<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>
<h5>User Details</h5>
<h4>Name: <%= request.getParameter("name") %></h4>
<h4>Address: <%= request.getParameter("address") %> </h4>
<h4>Gender: <%= request.getParameter("gender") %> </h4>
<h4>Country: <%= request.getParameter("country") %> </h4>
</body>
</html>
