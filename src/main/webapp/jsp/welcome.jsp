<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("user")==null){
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<form action="logout.jsp" method="post">
    <button type="submit">Log out</button>
</form>
<h1>Welcome Admin</h1>
<p>Do some admin stuff</p>
</body>
</html>
