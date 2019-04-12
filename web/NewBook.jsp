<%-- 
    Document   : NewBook
    Created on : Apr 11, 2019, 12:55:22 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Новая книга</title>
    </head>
    <body>
        <h1>Введите данные книги!</h1>
        <form action="createBook" method="POST">
            Название книги:<br>
            <input type="text" name="name"><br>
            Автор книги:<br>
            <input type="text" name="author"><br>
            Год издания книги:<br>
            <input type="text" name="year"><br>
            <input type="submit" value="Создать">
        </form>        
    </body>
</html>
