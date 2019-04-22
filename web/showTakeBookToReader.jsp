<%-- 
    Document   : showTakeBookToReader
    Created on : Apr 18, 2019, 1:59:35 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Выдать книгу читателю</title>
    </head>
    <body>
        <form action="takeBookToReader" method="POST">
            Список читателей:<br>
            <select name="readerId">
                <c:forEach var="reader" items="${listReaders}">
                    <option value="${reader.id}">${reader.name} ${reader.surname}</option>
                </c:forEach>
            </select>
            Список книг:<br>
            <select name="bookId">
                <c:forEach var="book" items="${listBooks}">
                    <option value="${book.id}">${book.name} ${book.author}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Выдать книгу">
        </form>
        
    </body>
</html>
