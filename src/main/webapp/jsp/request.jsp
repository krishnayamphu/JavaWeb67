<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Context path: <%= request.getServletContext() %></p>
<p>Servlet path: <%= request.getServletPath() %></p>
<p>Local address: <%= request.getLocalAddr() %></p>
<p>Remote address: <%= request.getRemoteAddr() %></p>
<p>Username: <%= request.getParameter("user") %></p>
</body>
</html>
