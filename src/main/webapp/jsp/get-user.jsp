<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>

<p>Username: <%= pageContext.getAttribute("user",PageContext.APPLICATION_SCOPE).toString()%></p>
</body>
</html>
