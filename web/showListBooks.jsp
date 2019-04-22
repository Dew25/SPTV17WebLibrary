<%-- 
    Document   : showListBooks
    Created on : Apr 18, 2019, 1:13:42 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список книг</title>
    </head>
    <body>
        <h1>Книги нашей библиотеки:</h1>
        <ul>
            <c:forEach var="book" items="${listBooks}">
                <li>${book.name} ${book.author}</li>
            </c:forEach>
        </ul>
    </body>
</html>
