<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h3>User Login</h3>
<form action="check.jsp" method="post">
    <p style="color:red">
        <%
            String err=request.getParameter("err");
            if(err!=null){
                out.print("Invalid username or password");
            }
        %>
    </p>
    <input type="text" placeholder="Username" name="username">
    <br><br>
    <input type="password" placeholder="Password" name="password">
    <br><br>
    <button type="submit">Login</button>
</form>
</body>
</html>
