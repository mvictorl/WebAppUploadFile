<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
</head>
<body>
<h2>Home page</h2>
</body>
    <form action="/servlet" method="post" enctype="multipart/form-data">
        Select File to Upload:<input type="file" name="fileName">
        <br>
        <input type="submit" value="Upload">
    </form>
    <c:choose>
        <c:when test="${empty errorString}">
            <c:if test="${not empty fileName}">
                <p>File ${fileName} uploaded successfully.</p>
            </c:if>
        </c:when>
        <c:otherwise>
            <h3>Error:</h3>
            <p>${errorString}</p>
        </c:otherwise>
    </c:choose>
</html>
