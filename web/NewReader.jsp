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
        <title>Новый читатель</title>
    </head>
    <body>
        <h1>Введите данные читателя!</h1>
        <form action="createReader" method="POST">
            Имя читателя:<br>
            <input type="text" name="name"><br>
            Фамилия читателя:<br>
            <input type="text" name="surname"><br>
            Год рождения читателя:<br>
            <input type="text" name="year"><br>
            <input type="submit" value="Создать">
        </form>        
    </body>
</html>
