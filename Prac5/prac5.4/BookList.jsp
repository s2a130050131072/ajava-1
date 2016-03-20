<%-- 
    Document   : BookList
    Created on : Mar 20, 2016, 3:43:46 PM
    Author     : NEEL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book List JSP</title>
    </head>
    <body>
        <h3>Enrollment No:130050131072</h3>
        <% String book=request.getParameter("t1");
           String author=request.getParameter("t2"); 
        
    try { PreparedStatement ps=null;
          Connection con=null;
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072","postgres","postgres");
             ps=con.prepareStatement("insert into books values(?,?,?)") ;
               ps.setInt(1,3);
               ps.setString(2,book); 
               ps.setString(3,author);
               int i=ps.executeUpdate();
               out.println("Inserted Successfully<br/>");
               out.println("<table border='3'>");
               ps=con.prepareStatement("select * from books");  
               out.println("<tr><th>Sr.no</th><th>Book Name</th><th>Author Name</th><tr>");
               out.println("<b>Book List</b>");
                ResultSet rs=ps.executeQuery();  
                while(rs.next()){  
                    int num = rs.getInt("srno");
                    String b = rs.getString("bookname");
                    String a=rs.getString("authorname");
		out.println("<tr><td>" + num + "</td><td>" + b +"</td><td>"+ a + "</td></tr>"); 
                }
                out.println("</table>");
        }  
     catch(Exception ex){
        out.println(ex);
     }   
%>
</body>
</html>
