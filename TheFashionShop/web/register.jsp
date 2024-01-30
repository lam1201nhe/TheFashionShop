<%-- 
    Document   : Register
    Created on : Jan 25, 2024, 5:52:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
          <body>
    <h1>REGISTER</h1>
    <form action="RegisterController" method="post">
        Email: <input type="text" name="email"><br>
        Password: <input type="password" name="password"><br>
        Full Name: <input type="text" name="fullName"><br>
        <input type="submit" value="Register">
    </form>
</body></html>

