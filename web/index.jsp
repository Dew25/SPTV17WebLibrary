<%-- 
    Document   : index
    Created on : Apr 3, 2019, 11:05:25 AM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Привет ребята!</h1>
        <a href="showNewBook">Новая книга</a><br>
        <a href="showNewReader">Новый читатель</a><br>
        Список книг:<br>
        <c:forEach var="book" items="${listBooks}">
            ${book}<br>
        </c:forEach>
        
        Список читателей:<br>
        <c:forEach var="reader" items="${listReaders}">
            ${reader}<br>
        </c:forEach> 

    </body>
</html>
