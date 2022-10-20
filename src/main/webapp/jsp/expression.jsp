<%@ page import="java.time.LocalTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%= "Hello Java World" %>
<br>
HH:MM:SS =<%= LocalTime.now().getHour() %>
:<%= LocalTime.now().getMinute() %>
:<%= LocalTime.now().getSecond() %>
</body>
</html>
