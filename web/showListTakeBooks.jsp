<%-- 
    Document   : showListTakeBooks
    Created on : Apr 18, 2019, 3:04:38 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Выданные книги</title>
    </head>
    <body>
        <h1>Список выданых книг!</h1>
        <ul>
            <c:forEach var="history" items="${listHistories}">
                <li>${history.reader.name} ${history.reader.surname} 
                    читает книгу: 
                    ${history.book.name} ${history.book.author}
                </li>
            </c:forEach>
        </ul>
    </body>
</html>
