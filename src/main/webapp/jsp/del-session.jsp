<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Destroy Session</title>
</head>
<body>
<%
    session.invalidate();
%>
<p>All session attributes destroyed successfully</p>

</body>
</html>
