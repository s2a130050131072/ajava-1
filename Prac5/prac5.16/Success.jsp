
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body><h3>Enrollment No:130050131072</h3>
        <h1>Hello <% out.print(request.getParameter("uname"));%></h1>
    </body>
</html>
