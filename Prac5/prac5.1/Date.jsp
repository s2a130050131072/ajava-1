<%-- 
    Document   : Date
    Created on : Mar 20, 2016, 2:58:24 PM
    Author     : NEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Current Time</title>
    </head>
    <body>
        <h2>Enrollment No:130050131072</h2>
        <h2>Current Time: <%= java.util.Calendar.getInstance().getTime() %></h2>
    </body>
</html>
