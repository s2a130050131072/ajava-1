<%-- 
    Document   : ShowName
    Created on : Mar 20, 2016, 3:06:01 PM
    Author     : NEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello User</title>
    </head>
    <body>
        <h1>Enrollment No:130050131072</h1>
      <% String n=request.getParameter("name"); 
         out.println("<h4>Hello"+"\t"+n+"!!</h4>"); 
      %>  
       
    </body>
</html>
