import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
  
 public class ServletFetchingData extends HttpServlet {
  
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
         PrintWriter out = res.getWriter();
         res.setContentType("text/html");
         out.println("<html><body>");
		 out.println("<h2>Enrollment NO:130050131072</h2>");
         try {
             Class.forName("org.postgresql.Driver");
             Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072", "postgres", "postgres");
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("select * from student");
             out.println("<table border='3'>");
             out.println("<tr><th>id</th><th>Name</th><th>Branch</th><tr>");
             while (rs.next()) {
                 int id = rs.getInt("id");
                 String name = rs.getString("Name");
                 String b = rs.getString("Branch"); 
                 out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + b + "</td></tr>"); 
             }
             out.println("</table>");
             out.println("</html></body>");
             con.close();
            }
             catch (Exception e) {
             out.println("error");
         }
     }
 }