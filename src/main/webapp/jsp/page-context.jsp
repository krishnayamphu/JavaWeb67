<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Context</title>
</head>
<body>

<%
    pageContext.setAttribute("user","administrator",PageContext.APPLICATION_SCOPE);
    out.print("username defined successfully.");
%>

</body>
</html>
