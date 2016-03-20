import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletConfig;
public class ServletFetchingDataFromDatabase extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException{
		req.setContentType("text/html");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			PrintWriter out=re.getWriter();
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072","postgres","postgres");
			String query="select * from h_table;";
			ps=con.prepareStatement(query);
			out.println("<h1>Info Of Student</h1>");
			out.println("<h2>Enrollment No=130050131072</h2><br/>");
			out.println("<html><body>");
			out.println("<table border='3'>");
			out.println("<tr><th>Name</th><th>Password</th><tr>");
			
			rs=ps.executeQuery();
			while(rs.next()){
				String name = rs.getString("name");
				String password = rs.getString("pwd");
				out.println("<tr><td>" + name + "</td><td>" + password + "</td></tr>"); 
			}
			out.println("</table>");
             out.println("</html></body>");
		}
		catch(IOException i){
			System.out.println("IOException");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}