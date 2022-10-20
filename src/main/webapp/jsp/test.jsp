<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Servlet Configuration</title>
</head>
<body>
<p>Company Name: <%= config.getInitParameter("company") %></p>
<p>Contact Number: <%= application.getInitParameter("contact") %></p>

</body>
</html>
