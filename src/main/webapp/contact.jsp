<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="jsp/error.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Contact Us</title>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<h2>Get In Touch</h2>
<form action="#">
    <label>Name</label>
    <input type="text">
    <br><br>
    <label>Message</label>
    <textarea name="" id="" cols="30" rows="10"></textarea>
    <br><br>
    <button>Send</button>
</form>
</body>
</html>
