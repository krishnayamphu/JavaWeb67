<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="Welcome to JSTL"/>
<hr>
<c:set var="maxAge" value="120" scope="session"/>
<p>
    Maximum Human Age: <c:out value="${maxAge}"/>
</p>
<hr>
<c:set var="temp" value="60"/>
<c:if test="${temp>=35}">
    <p>Temperature is too much hot!</p>
</c:if>
<hr>
<c:set var="gender" value="female"/>
<c:choose>
    <c:when test="${gender=='male'}">
        <p>Boy</p>
    </c:when>
    <c:otherwise>
        <p>Girl</p>
    </c:otherwise>
</c:choose>
<hr>
<c:forEach var="i" begin="1" end="5">
    <p>Hello world ${i}</p>
</c:forEach>
<hr>
<c:forEach var="color" items="${colors}">
    <p>Color: ${color}</p>
</c:forEach>
</body>
</html>
