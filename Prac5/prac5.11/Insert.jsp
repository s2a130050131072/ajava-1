<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="Insert11.jsp">
        <h1>Student Entry Form</h1>
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id" placeholder="id"></td>
            </tr>
            
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="firstname" placeholder="First Name"></td>
            </tr>
            
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="lastname" placeholder="Last Name"></td>
            </tr>
            
            <tr>
                <td>DOB</td>
                <td><input type="text" name="dob" placeholder="Date Of Birth"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="Submit" value="submit"/></td>
            </tr>
         </table>
       </form>
     </body>
</html>
