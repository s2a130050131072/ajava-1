<%-- 
    Document   : BookEntry
    Created on : Mar 20, 2016, 3:53:22 PM
    Author     : NEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding Book</title>
        <style>
            #addbook{
                width:250px;
                height:175px;
                border:1px solid black;
                margin-top: 50px;
                padding:50px;
                text-align: right;
            }
        </style>
    </head>
    <body border='1'>
    <center>
        <div id="addbook">
        <h3>Enrollment No:130050131072</h3>
        <h3>Book Entry Form</h3>
        <form action="BookList.jsp">
            Book Name:<input type="text" name="t1" /><br/><br/>
            Author:<input type="text" name="t2" /><br/><br/>
            <input type="submit" value="Add Book" /><br/>
        </form>
        </div>
    </center>    
    </body>
</html>
