<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form action="LoginController" method ="post">
            username: <input type ="text" name ="email"/><br>
            password: <input type ="text" name ="password"/><br>
            <input type ="submit" value ="login"/>
        </form>
    </body>
</html>
