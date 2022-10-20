<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/22/2022
  Time: 6:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form>
    <lable>Name</lable>
    <br>
    <input type="text" placeholder="name">
    <br>
    <label>Password</label>
    <br>
    <input type="password">
    <br>
    <label>sex</label>
    <br>
    <input type="radio" name="g" value="male">Male
    <input type="radio" name="g" value="female">Female
    <br>
    <label>Course</label>
    <br>
    <input type="checkbox" value="basic" name="course">Basic
    <input type="checkbox" value="programming" name="course">Programming
    <br>
    <label>Country</label>
    <select name="country">
        <option value="np">Nepal</option>
        <option value="cn">China</option>
        <option value="in">India</option>
        <option value="jp">Japan</option>
    </select>
    <br><br>
    <label>Remarks</label>
    <textarea cols="20" rows="5"></textarea>
    <br>
    <label>Date</label>
    <br>
    <input type="date">
    <br>
    <label>Time</label>
    <br>
    <input type="time">
    <br>

    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
