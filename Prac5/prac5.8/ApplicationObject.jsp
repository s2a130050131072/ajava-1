<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Object </title>
    </head>
    <body>
       <h4>Enrollment No:130050131072</h4>
       <%
           out.print("Welcome "+request.getParameter("uname"));  
            
           String driver=application.getInitParameter("dname");  
           out.print("driver name is="+driver);  
       %>
        
    </body>
</html>
