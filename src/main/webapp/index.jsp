<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>User info</title>
</head>
<body>
<h3>Test forEach </h3>
<ul>
    <c:forEach var="user" items="${users}">
        <li><c:out value="${user}"/></li>
    </c:forEach>
</ul>
<br>
<h3>Test set</h3>
<c:set var="Int" scope="session" value="${100*4}"/>
<p>4000*4=<c:out value="${Int}"/></p>
<h3>Test if</h3>
<c:if test="${Int>6000}">
    <p>Pasha</p>
</c:if>
<c:if test="${Int<6000}">
    <p>NePasha</p>
</c:if>
<br>
<h3>Test choose</h3>
<c:choose>
    <c:when test="${Int <= 1000}">
        Int is not good.
    </c:when>
    <c:when test="${Int > 10000}">
        Int is very good.
    </c:when>
    <c:otherwise>
        Int is undetermined...
    </c:otherwise>
</c:choose>
</body>
</html>