
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<form action="data.jsp" method="post">
    <lable>Name</lable>
    <br>
    <input type="text" placeholder="name" name="name">
    <br><br>
    <label>Address</label>
    <br>
    <input type="text" placeholder="address" name="address">
    <br><br>
    <label>Gender</label>
    <input type="radio" name="gender" value="male">Male
    <input type="radio" name="gender" value="female">Female
    <br><br>
    <label>Country</label>
    <select name="country">
        <option value="">Select Country</option>
        <option value="nepal">Nepal</option>
        <option value="china">China</option>
        <option value="india">India</option>
    </select>
    <br><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
