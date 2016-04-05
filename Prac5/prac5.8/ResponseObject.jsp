<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response Object</title>
    </head>
    <body>
        <h4>Enrollment No:130050131072</h4>
	<%
        Boolean x=response.isCommitted();
        if(x==true){
            out.println("Response is committed..");
        }
        else{
            out.println("Response is not committed..");
            
        }
    %>
    </body>
</html>
