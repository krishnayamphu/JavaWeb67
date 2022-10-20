<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
int maxSpeeed=300;
double getSquare(double n){
    return n*n;
}
%>
<p>Maximum Bike Speed: <%= maxSpeeed %></p>
<p>Power of n: <%= getSquare(5) %></p>
</body>
</html>
